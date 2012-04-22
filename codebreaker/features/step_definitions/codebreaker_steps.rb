# -*- coding: utf-8 -*-
#language: ja

class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

前提 /^まだプレイしていない状態で$/ do
end

もし /^新しいゲームを開始する$/ do
  game = Codebreaker::Game.new(output)
  game.start
end

ならば /^"([^"]*)"と表示され$/ do |message|
  output.messages.should include(message)
end

ならば /^"([^"]*)"と表示される$/ do |message|
  output.messages.should include(message)
end



