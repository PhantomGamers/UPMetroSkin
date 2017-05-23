"friends/ChatRoomDlgFriend.res"
{
	controls
	{
		"ChatRoomDlg"
		{
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Title"
		}
		"TextEntry"
		{
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="textentryfocus_chat"
		}
		"ChatHistory"
		{
			"ControlName"		"RichText"
			"maxchars"		"-1"
			"ScrollBar"		"1"
			style="ListPanel"
		}
		"SendButton"
		{
			"ControlName"		"Button"
			"tabPosition"		"2"
			"paintbackground"		"1"
			"labelText"		"#Friends_Chat_Send"
			"textAlignment"		"west"
			"Default"		"1"
			style="button"
		}
		"StatusLabel"
		{
			"ControlName"		"Label"
			"labelText"			""
		}
		"TitlePanel"
		{
			"ControlName"		"CFriendPanel"
			"zpos"		"-2"
			paintbackgroundenabled=0
			
		}
		"VoiceBar"
		{
			"ControlName"		"CVoiceBar"
		}
		"VoiceChat"
		{
			"ControlName"		"Button"
			style="controlbutton"
			minimum-width="120"
		}
		"GameInviteBar"
		{
			"ControlName"		"GameInviteBar"
		}
		"EmoticonButton"
		{
			"ControlName"		"CEmoticonButton"
		}
	}	

	styles
	{
		label
		{
			textcolor=White45
			font-family=semibold
			font-style=uppercase
			font-size=20
		}

		controlbutton
		{
			bgcolor="none"
			render_bg{}
			image="graphics/tab_close_def"
			padding-left=-4
		}
		controlbutton:hover
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
		}
		controlbutton:active
		{
			bgcolor="none"
			image="graphics/tab_close_hov"
		}

		Button
		{
			bgcolor=TextEntry
			render_bg{}
			image="graphics/metro/icons/chat/send"
			padding-left=4
		}
		Button:hover
		{
			bgcolor="TextEntry"
			render_bg
			{
				0="fill(x0,y0,x1,y1,white05)"
			}
		}
		Button:active
		{
			bgcolor=Focus
			render_bg{}
		}
		Button:disabled
		{
			bgcolor=TextEntry
			render_bg{}
			image="graphics/metro/icons/chat/send_d"
		}

		"RichText url"
		{
			font-family=semibold
			font-style=uppercase
		}
		RichText
		{
			font-size=18
		}
		friends_chat_text
		{
			font-size=18
		}
		friends_chat_text_self
		{
			font-size=18
		}
		friends_chat_history
		{
			font-size=18
		}
		//Friend Status Changes
		friends_chat_event
		{
			font-size=18
		}
		//Your Status Changes/Connection/Game
		friends_chat_bright_event
		{
			font-size=18
		}
		friends_chat_url
		{
			font-size=18
		}
		friends_chat_name_ingame
		{
			font-size=18
		}
		friends_chat_self
		{
			font-size=18
		}
		friends_chat_name
		{
			font-size=18
		}
		friends_chat_accountid
		{
			font-size=18
		}
		friends_chat_securitylink
		{
			font-size=18
		}
	}

	layout
	{
		//Voice Chat Close Button
		place { control="VoiceChat" y=55 align=right margin=4 width=16 height=16 dir=right }

		//Title Panel
		place { control="TitlePanel" x=0 y=0 height=56 width=max margin-right=16 end-right=ChatActionsButton }

		//Menu Button
		place { control="ChatActionsButton" height=54 width=54 align=right dir=right }

		//Bar Height Override
		place { control="GameInviteBar,TradeInviteBar,ChatInfoBar,VoiceBar,BIBar,BABar" height=54 }

		//Voice Chat Bar
		place { control="VoiceBar" y=55 width=max height=54 dir=down end-right=VoiceChat }

		//Bar Position Info
		place { control="TradeInviteBar,GameInviteBar,ChatInfoBar,BIBar,BABar,ChatHistory" start=VoiceBar y=0 width=max height=max align=right dir=down margin-bottom=61 margin-right=1 }

		//Regions
		region { name=bottom1 align=bottom height=71 width=max margin=8 }
		region { name=bottom align=bottom height=40 }

		//Text Box
		place { control="TextEntry" region=bottom height=max width=max end-right=EmoticonButton }

		//Emoticon Menu
		place { control="EmoticonButton,SendButton" region=bottom height=max width=40 align=right margin-right=1 }

		//Last Message Received
		place { control="StatusLabel" region=bottom1 height=25 }
	}
}