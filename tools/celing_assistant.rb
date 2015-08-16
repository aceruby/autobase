require 'tk'

class CelingAssistant
  def initialize
    initialize_layout
    initialize_data
    initialize_event

    Tk.mainloop
  end

  def initialize_event
    @root.protocol "WM_DELETE_WINDOW",root_delete_window
    @root.protocol "WM_SAVE_YOURSELF",root_save_youself
    @root.protocol "WM_TAKE_FOCUS",root_take_focus

    @txt_cmd.bind "Double-1",proc { txt_cmd_dbclick }
    @txt_cmd.bind "ButtonPress-1",proc { txt_cmd_click }

    #可以工作，但很难看，需要优化写法
    @txt_cmd_yscroll.command proc { |*args| @txt_cmd.yview(*args) }
    @txt_cmd.yscrollcommand proc { |first, last| @txt_cmd_yscroll.set(first, last) }
    @txt_cmd_xscroll.command proc { |*args| @txt_cmd.xview(*args) }
    @txt_cmd.xscrollcommand proc { |first, last| @txt_cmd_xscroll.set(first, last) }

    #@btn_cmd.command proc { btn_cmd_click }
    @btn_cmd.bind "ButtonPress-1",proc { btn_cmd_click }
  end

  def initialize_data
    @root.attributes "alpha", 0.90
    #@root.attributes "disabled", true
    #@root.attributes "fullscreen", true
    @root.attributes "topmost", true
    @root.attributes "toolwindow", true
    @root.minsize 300,200
    @root.maxsize 300,200
    @root.title "CelingAssistant"
    #puts @root.frame #HWND
    @root.iconbitmap "CeLing.ico"

    @txt_cmd.insert 'end', "Hello!\n\ntext widget example - www.yiibai.com"
    #@txt_cmd.configure 'activebackground', 'green'
    @txt_cmd.wrap "word"

    @btn_cmd.configure 'activebackground', 'green'

  end

  def initialize_layout
    @root = TkRoot.new

    @layout_top=TkFrame.new(@root) do
      relief 'sunken'
      borderwidth 0
      background "red"
      padx 0
      pady 0
      pack('side' => 'top')
    end

    @layout_left=TkFrame.new(@root) do
      relief 'sunken'
      borderwidth 0
      background "red"
      padx 0
      pady 0
      pack('side' => 'left')
    end

    @layout_right=TkFrame.new(@root) do
      relief 'sunken'
      borderwidth 0
      background "red"
      padx 0
      pady 0
      pack('side' => 'right')
    end

    @layout_bottom=TkFrame.new(@root) do
      relief 'sunken'
      borderwidth 0
      background "red"
      padx 0
      pady 0
      pack('side' => 'bottom','expand' => 1, 'fill' => 'both')
    end

    @layout_bottom_left=TkFrame.new(@layout_bottom) do
      relief 'sunken'
      borderwidth 0
      background "red"
      padx 0
      pady 0
      pack('side' => 'left')
    end
    #TkLabel.new(@root) do
    #  text 'Hello, World!'
    #  pack { padx 15; pady 15;side 'left' }
    #end

    @btn_cmd=TkButton.new(@layout_top) do
      text 'Hello, World!'
      pack { padx 0; pady 0;side 'right' }
    end

    @txt_cmd = TkText.new(@layout_bottom_left) do
      borderwidth 1
      width 35
      height 8
      font TkFont.new('times 12 bold')
      pack {side 'top';expand 1;fill 'both'}
    end

    @txt_cmd_xscroll = TkScrollbar.new(@layout_bottom_left) do
      orient 'horizontal'
      pack('side' => 'bottom', 'expand' => 1, 'fill' => 'x')
    end

    @txt_cmd_yscroll = TkScrollbar.new(@layout_bottom) do
      orient 'vertical'
      pack('side' => 'right', 'expand' => 1,  'fill' => 'y')
    end
  end

  def root_delete_window

  end

  def root_save_youself

  end

  def root_take_focus

  end

  def txt_cmd_click

  end

  def txt_cmd_dbclick
    print "aaa"
  end

  def btn_cmd_click
    color = @btn_cmd.cget('activebackground')
    puts color
    puts @btn_cmd.cget('text')
    @root.iconify
  end
end

if __FILE__ == $0
  CelingAssistant.new
end