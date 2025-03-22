import subprocess

c = c
config = config


config.load_autoconfig(False)

c.colors.webpage.preferred_color_scheme = 'dark'

c.tabs.show = 'multiple'
c.statusbar.show = 'in-mode'

c.content.pdfjs = True

c.url.searchengines = {
    'DEFAULT': 'https://google.com/search?q={}',
    'wiki': 'https://en.wikipedia.org/wiki/{}',
    'yt': 'https://www.youtube.com/results?search_query={}',
    'gpt': 'https://chat.openai.com/?model=gpt-4&q={}'
}

c.aliases = {
    'w': 'session-save',
    'q': 'close',
    'wq': 'quit --save',
}


config.bind('xr', 'config-source')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('xp', 'hint links userscript launcher.py')


config.bind('xd', 'config-cycle colors.webpage.darkmode.enabled')
config.bind('J', 'tab-prev', mode='normal')
config.bind('K', 'tab-next', mode='normal')

c.completion.shrink = True
c.completion.height = '30%'


def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], capture_output=True, check=True, text=True)
    lines = x.stdout.split('\n')
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props


xresources = read_xresources('*')
c.colors.statusbar.normal.bg = xresources['*.background']

c.colors.tabs.bar.bg = xresources['*.background']
c.colors.tabs.odd.bg = xresources['*.background']
c.colors.tabs.selected.odd.bg = xresources['*.color3']
c.colors.tabs.selected.odd.fg = xresources['*.background']
c.colors.tabs.even.bg = xresources['*.background']
c.colors.tabs.selected.even.bg = xresources['*.color3']
c.colors.tabs.selected.even.fg = xresources['*.background']
c.tabs.padding = {'bottom': 3, 'left': 3, 'right': 3, 'top': 3}
c.fonts.tabs.selected = "bold"

