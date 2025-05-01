
if  not LPH_OBFUSCATED then 
function LPH_JIT_MAX(...) 
return ...;
end 
function LPH_NO_VIRTUALIZE(...) 
return ...;
end 
function LPH_NO_UPVALUES(...) 
return ...;
end 
end 
spawn(
function() 
for v701,v702 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) 
do 
if ((v702.Name=="Death") or (v702.Name=="Spawn")) then v702:Destroy();
end 
end 
end);
spawn(
function() 
for v703,v704 in pairs(game:GetDescendants()) 
do 
if (v704:IsA("ParticleEmitter") or v704:IsA("Trail")) then v704.Lifetime=NumberRange.new(0);
elseif v704:IsA("Explosion") then v704.BlastPressure=1;
v704.BlastRadius=1;
elseif (v704:IsA("Fire") or v704:IsA("SpotLight") or v704:IsA("Smoke")) then v704.Enabled=false;
end 
end 
end);
local v0=game:GetService("UserInputService");
local v1=game:GetService("TweenService");
local 
function v2(v123,v124) 
local v125=nil;
local v126=nil;
local v127=nil;
local v128=nil;
local 
function v129(v705) 
local v706=v705.Position-v127 ;
local v707=UDim2.new(v128.X.Scale,v128.X.Offset + v706.X ,v128.Y.Scale,v128.Y.Offset + v706.Y );
local v708=v1:Create(v124,TweenInfo.new(0.15),{Position=v707});
v708:Play();
end v123.InputBegan:Connect(
function(v709) 
if ((v709.UserInputType==Enum.UserInputType.MouseButton1) or (v709.UserInputType==Enum.UserInputType.Touch)) then v125=true;
v127=v709.Position;
v128=v124.Position;
v709.Changed:Connect(
function() 
if (v709.UserInputState==Enum.UserInputState.End) then v125=false;
end 
end);
end 
end);
v123.InputChanged:Connect(
function(v710) 
if ((v710.UserInputType==Enum.UserInputType.MouseMovement) or (v710.UserInputType==Enum.UserInputType.Touch)) then v126=v710;
end 
end);
v0.InputChanged:Connect(
function(v711) 
if ((v711==v126) and v125) then v129(v711);
end 
end);
end _G.BGColor_1=Color3.fromRGB(30,30,30);
_G.BGColor_2=Color3.fromRGB(20,20,20);
_G.Color=Color3.fromRGB(0,191,255);
_G.WindowBackgroundColor=Color3.fromRGB(12,12,12);
_G.BackgroundItemColor=Color3.fromRGB(20,20,20);
_G.TabWindowColor=Color3.fromRGB(30,30,30);
_G.ContainerColor=Color3.fromRGB(30,30,30);
_G.TitleTextColor=Color3.fromRGB(150,150,150);
_G.ImageColor=Color3.fromRGB(150,150,150);
_G.LineThemeColor=Color3.fromRGB(150,150,150);
_G.TabTextColor=Color3.fromRGB(150,150,150);
_G.TabImageColor=Color3.fromRGB(150,150,150);
_G.TabThemeColor=Color3.fromRGB(250,0,0);
_G.SectionColor=Color3.fromRGB(150,150,150);
_G.SectionImageColor=Color3.fromRGB(150,150,150);
_G.SectionTextColor=Color3.fromRGB(150,150,150);
_G.SectionOn=Color3.fromRGB(0,250,0);
local v3={};
local v4={};
local v1=game:GetService("TweenService");
local v5=Instance.new("ScreenGui");
v5.Name="Balaraja";
v5.Parent=game.CoreGui;
v5.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
local v11=Instance.new("Frame");
v11.Name="NotiFrame";
v11.Parent=v5;
v11.AnchorPoint=Vector2.new(0.5,0.5);
v11.BackgroundColor3=Color3.fromRGB(35,35,35);
v11.BorderSizePixel=0;
v11.Position=UDim2.new(1, -210,1,100);
v11.Size=UDim2.new(0,400,0,500);
v11.ClipsDescendants=true;
v11.BackgroundTransparency=1;
local v21=Instance.new("UIListLayout");
v21.Parent=v11;
v21.SortOrder=Enum.SortOrder.LayoutOrder;
v21.Padding=UDim.new(0,5);
v4.Notification=
function(v130,v131,v132,v133) 
local v134=Instance.new("Frame");
v134.Name="TitleFrame";
v134.Parent=v11;
v134.AnchorPoint=Vector2.new(0.5,0.5);
v134.BackgroundColor3=Color3.fromRGB(35,35,35);
v134.BorderSizePixel=0;
v134.Position=UDim2.new(0.5,0,0.5,0);
v134.Size=UDim2.new(0,0,0,0);
v134.ClipsDescendants=true;
v134.BackgroundTransparency=0;
local v144=Instance.new("UICorner");
v144.CornerRadius=UDim.new(0,4);
v144.Name="";
v144.Parent=v134;
v134:TweenSizeAndPosition(UDim2.new(0,400 -10 ,0,70),UDim2.new(0.5,0,0.5,0),"Out","Quad",0.3,true);
local v148=Instance.new("ImageLabel");
v148.Parent=v134;
v148.BackgroundColor3=Color3.fromRGB(255,255,255);
v148.BackgroundTransparency=1;
v148.AnchorPoint=Vector2.new(0.5,0.5);
v148.Position=UDim2.new(0.9,0,0.5,0);
v148.Size=UDim2.new(0,90,0,90);
v148.Image="rbxassetid://";
local v156=Instance.new("TextLabel");
v156.Parent=v134;
v156.Name="TextLabel_Tap";
v156.BackgroundColor3=Color3.fromRGB(50,50,50);
v156.Size=UDim2.new(0,160,0,25);
v156.Font=Enum.Font.Code;
v156.Text=v131;
v156.TextColor3=Color3.fromRGB(30,30,30);
v156.TextSize=17;
v156.AnchorPoint=Vector2.new(0.5,0.5);
v156.Position=UDim2.new(0.23,0,0.3,0);
v156.TextXAlignment=Enum.TextXAlignment.Left;
v156.BackgroundTransparency=1;
local v171=Instance.new("Frame");
v171.Name="LableFrame";
v171.Parent=v134;
v171.AnchorPoint=Vector2.new(0.5,0.5);
v171.BackgroundColor3=Color3.fromRGB(50,50,50);
v171.BorderSizePixel=0;
v171.Position=UDim2.new(0.36,0,0.67,0);
v171.Size=UDim2.new(0,260,0,25);
v171.ClipsDescendants=true;
v171.BackgroundTransparency=1;
local v181=Instance.new("TextLabel");
v181.Parent=v171;
v181.Name="TextLabel_Tap";
v181.BackgroundColor3=Color3.fromRGB(30,30,30);
v181.Size=UDim2.new(0,260,0,25);
v181.Font=Enum.Font.Code;
v181.Text=v132;
v181.TextColor3=Color3.fromRGB(255,255,255);
v181.TextSize=15;
v181.AnchorPoint=Vector2.new(0.5,0.5);
v181.Position=UDim2.new(0.5,0,0.5,0);
v181.TextXAlignment=Enum.TextXAlignment.Left;
v181.BackgroundTransparency=1;
repeat wait();
until v134.Size==UDim2.new(0,400 -10 ,0,70)  
local v194=Instance.new("Frame");
v194.Name="Time";
v194.Parent=v134;
v194.BackgroundColor3=Color3.fromRGB(255,255,255);
v194.BorderSizePixel=0;
v194.Position=UDim2.new(0,0,0,0);
v194.Size=UDim2.new(0,0,0,0);
v194.ClipsDescendants=false;
v194.BackgroundTransparency=0;
local v203=Instance.new("UICorner");
v203.CornerRadius=UDim.new(0,4);
v203.Name="";
v203.Parent=v194;
v194:TweenSizeAndPosition(UDim2.new(0,400 -10 ,0,3),UDim2.new(0,0,0,0),"Out","Quad",0.3,true);
repeat wait();
until v194.Size==UDim2.new(0,400 -10 ,0,3)  v1:Create(v194,TweenInfo.new(tonumber(v133),Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{Size=UDim2.new(0,0,0,3)}):Play();
delay(tonumber(v133),
function() v1:Create(v134,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),{Size=UDim2.new(0,0,0,0)}):Play();
wait(0.3);
v134:Destroy();
end);
end;
do 
local v207=game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("ZENHUB");
if v207 then v207:Destroy();
end 
end v3.Window=
function(v208,v209,v210,v211) 
local v212={};
local v213=false;
local v214=false;
local v210=v210 or 118862296430953 ;
local v215="";
local v211=v211 or Enum.KeyCode.RightControl ;
local v216=string.gsub(tostring(v211),"Enum.KeyCode.","");
local v217=Instance.new("ScreenGui");
v217.Name="ZENHUB";
v217.Parent=game.CoreGui;
v217.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
local v223=Instance.new("Frame");
v223.Name="Main";
v223.Parent=v217;
v223.ClipsDescendants=true;
v223.AnchorPoint=Vector2.new(0.5,0.5);
v223.BackgroundColor3=Color3.fromRGB(24,24,24);
v223.Position=UDim2.new(0.5,0,0.5,0);
v223.Size=UDim2.new(0,0,0,0);
v223:TweenSize(UDim2.new(0,480,0,280),"Out","Quad",0.4,true);
local v231=Instance.new("UICorner");
v231.Name="MCNR";
v231.Parent=v223;
local v234=Instance.new("Frame");
v234.Name="Top";
v234.Parent=v223;
v234.BackgroundColor3=Color3.fromRGB(35,35,35);
v234.Size=UDim2.new(0,480,0,27);
local v239=Instance.new("UICorner");
v239.Name="TCNR";
v239.Parent=v234;
local v242=Instance.new("ImageLabel");
v242.Name="Logo";
v242.Parent=v234;
v242.BackgroundColor3=Color3.fromRGB(0,191,255);
v242.BackgroundTransparency=1;
v242.Position=UDim2.new( -0.01,0, -0.319,0);
v242.Size=UDim2.new(0,55,0,45);
v242.Image="rbxassetid://"   .. tostring(v210) ;
local v250=Instance.new("TextLabel");
v250.Name="Name";
v250.Parent=v234;
v250.BackgroundColor3=Color3.fromRGB(0,191,255);
v250.BackgroundTransparency=1;
v250.Position=UDim2.new(0.0909756112,0,0,0);
v250.Size=UDim2.new(0,61,0,27);
v250.Font=Enum.Font.Code;
v250.Text=v209;
v250.TextColor3=Color3.fromRGB(0,191,255);
v250.TextSize=16;
local v262=Instance.new("TextLabel");
v262.Name="";
v262.Parent=v234;
v262.BackgroundColor3=Color3.fromRGB(0,191,255);
v262.BackgroundTransparency=1;
v262.Position=UDim2.new(0,78,0,0);
v262.Size=UDim2.new(0,81,0,27);
v262.Font=Enum.Font.Code;
v262.Text="";
v262.TextColor3=Color3.fromRGB(255,47,172);
v262.TextSize=16;
local v273=Instance.new("ImageLabel");
local v274=Instance.new("Frame");
v273.Parent=v223;
v273.BackgroundColor3=Color3.fromRGB(0,191,255);
v273.BackgroundTransparency=1;
v273.Position=UDim2.new(0,25,0,25);
v273.Size=UDim2.new(0,100,0,170);
v273.Image="";
local v281=Instance.new("Frame");
v281.Name="Tab";
v281.Parent=v223;
v281.BackgroundColor3=Color3.fromRGB(35,35,35);
v281.Position=UDim2.new(0,5,0,30);
v281.Size=UDim2.new(0,0,0,0);
local v287=Instance.new("UIListLayout");
v287.Name="TabCorner";
v287.Parent=v281;
v287.SortOrder=Enum.SortOrder.LayoutOrder;
v287.Padding=UDim.new(0,15);
local v239=Instance.new("UICorner");
v239.Name="TCNR";
v239.Parent=v281;
local v293=Instance.new("ScrollingFrame");
v293.Name="ScrollTab";
v293.Parent=v281;
v293.Active=true;
v293.BackgroundColor3=Color3.fromRGB(0,191,255);
v293.BackgroundTransparency=1;
v293.Size=UDim2.new(0,133,0,250);
v293.CanvasSize=UDim2.new(0,0,0,0);
v293.ScrollBarThickness=0;
local v302=Instance.new("UIListLayout");
v302.Name="PLL";
v302.Parent=v293;
v302.SortOrder=Enum.SortOrder.LayoutOrder;
v302.Padding=UDim.new(0,15);
local v307=Instance.new("UIPadding");
v307.Name="PPD";
v307.Parent=v293;
v307.PaddingLeft=UDim.new(0,10);
v307.PaddingTop=UDim.new(0,10);
local v312=Instance.new("Frame");
v312.Name="Page";
v312.Parent=v223;
v312.BackgroundColor3=Color3.fromRGB(30,30,30);
v312.Position=UDim2.new(0.295726834,0,0.144050003,0);
v312.Size=UDim2.new(0,330,0,280);
local v318=Instance.new("UICorner");
v318.Name="PCNR";
v318.Parent=v312;
local v321=Instance.new("Frame");
v321.Name="MainPage";
v321.Parent=v312;
v321.ClipsDescendants=true;
v321.BackgroundColor3=Color3.fromRGB(0,191,255);
v321.BackgroundTransparency=1;
v321.Size=UDim2.new(0,325,0,316);
local v328=Instance.new("Folder");
v328.Name="PageList";
v328.Parent=v321;
local v331=Instance.new("UIPageLayout");
v331.Parent=v328;
v331.SortOrder=Enum.SortOrder.LayoutOrder;
v331.EasingDirection=Enum.EasingDirection.InOut;
v331.EasingStyle=Enum.EasingStyle.Quad;
v331.FillDirection=Enum.FillDirection.Vertical;
v331.Padding=UDim.new(0,15);
v331.TweenTime=0.4;
v331.GamepadInputEnabled=false;
v331.ScrollWheelInputEnabled=false;
v331.TouchInputEnabled=false;
v2(v234,v223);
v0.InputBegan:Connect(
function(v712) 
if (v712.KeyCode==Enum.KeyCode[v216]) then 
if (v213==false) then v213=true;
v223:TweenSize(UDim2.new(0,0,0,0),"In","Quad",0.4,true);
else v213=false;
v223:TweenSize(UDim2.new(0,480,0,280),"Out","Quad",0.5,true);
end 
end 
end);
local v345={};
v345.T=
function(v713,v714,v715) 
local v716=Instance.new("TextButton");
local v717=Instance.new("ImageLabel");
v716.Parent=v293;
v716.Name=v714   .. "Server" ;
v716.Text=v714;
v716.BackgroundColor3=Color3.fromRGB(0,191,255);
v716.BackgroundTransparency=1;
v716.Size=UDim2.new(0,130,0,23);
v716.Font=Enum.Font.Gotham;
v716.TextColor3=Color3.fromRGB(225,225,225);
v716.TextSize=11;
v716.TextTransparency=0.1;
local v729=Instance.new("Frame");
local v730=Instance.new("UICorner");
v729.Name="TabFrame";
v729.Parent=v716;
v729.ClipsDescendants=true;
v729.BackgroundColor3=Color3.fromRGB(31,31,31);
v729.BackgroundTransparency=0.5;
v729.Size=UDim2.new(0,120,0.1,23);
v730.CornerRadius=UDim.new(0,5);
v730.Parent=v729;
v717.Name=v714 or "TabImage" ;
v717.Parent=v729;
v717.BackgroundColor3=_G.Color;
v717.BackgroundTransparency=1;
v717.Position=UDim2.new(0,0,0,0);
v717.Size=UDim2.new(0,20,0,20);
v717.Image=v715 or "rbxassetid://8666601749" ;
v717.ImageColor3=_G.Color;
local v747=Instance.new("ScrollingFrame");
v747.Name=v714   .. "_Page" ;
v747.Parent=v328;
v747.Active=true;
v747.BackgroundColor3=Color3.fromRGB(0,191,255);
v747.BackgroundTransparency=1;
v747.BorderSizePixel=0;
v747.Size=UDim2.new(0,400,0,245);
v747.CanvasSize=UDim2.new(0,0,0,0);
v747.ScrollBarThickness=0;
local v757=Instance.new("UIPadding");
local v758=Instance.new("UIListLayout");
v757.Parent=v747;
v757.PaddingLeft=UDim.new(0,10);
v757.PaddingTop=UDim.new(0,10);
v758.Padding=UDim.new(0,15);
v758.Parent=v747;
v758.SortOrder=Enum.SortOrder.LayoutOrder;
v716.MouseButton1Click:Connect(
function() 
for v1829,v1830 in next,v293:GetChildren() 
do 
if v1830:IsA("TextButton") then v1:Create(v1830,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play();
end v1:Create(v716,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play();
end 
for v1831,v1832 in next,v328:GetChildren() 
do v215=string.gsub(v716.Name,"Server","")   .. "_Page" ;
if (v1832.Name==v215) then v331:JumpTo(v1832);
end 
end 
end);
if (v214==false) then 
for v1965,v1966 in next,v293:GetChildren() 
do 
if v1966:IsA("TextButton") then v1:Create(v1966,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play();
end v1:Create(v716,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play();
end v331:JumpToIndex(1);
v214=true;
end game:GetService("RunService").Stepped:Connect(
function() pcall(
function() v747.CanvasSize=UDim2.new(0,0,0,v758.AbsoluteContentSize.Y + 20 );
v293.CanvasSize=UDim2.new(0,0,0,v302.AbsoluteContentSize.Y + 20 );
end);
end);
v3.Notification=
function(v984,v985) 
local v986=Instance.new("TextButton");
local v987=Instance.new("Frame");
local v988=Instance.new("TextButton");
local v989=Instance.new("UICorner");
local v990=Instance.new("TextLabel");
local v991=Instance.new("TextLabel");
local v992=Instance.new("TextLabel");
local v993=Instance.new("UICorner");
local v994=Instance.new("UIStroke");
local v995=Instance.new("Frame");
v986.Name="NotificationHold";
v986.Parent=v217;
v986.BackgroundColor3=_G.WindowBackgroundColor;
v986.BackgroundTransparency=1;
v986.BorderSizePixel=0;
v986.Size=UDim2.new(0,589,0,378);
v986.AutoButtonColor=false;
v986.Font=Enum.Font.SourceSans;
v986.Text="";
v986.TextColor3=_G.SectionTextColor;
v986.TextSize=13;
v1:Create(v986,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play();
wait(0.4);
v987.Name="NotificationFrame";
v987.Parent=v986;
v987.AnchorPoint=Vector2.new(0.5,0.5);
v987.BackgroundColor3=Color3.fromRGB(15,15,15);
v987.BorderColor3=_G.SectionColor;
v987.BorderSizePixel=0;
v987.Transparency=0;
v987.ClipsDescendants=true;
v987.Position=UDim2.new(0,295,0,190);
v987.Size=UDim2.new(0,0,0,0);
v987:TweenSize(UDim2.new(0,400,0,250),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.6,true);
v993.Name="NotifCorner";
v993.Parent=v987;
v993.CornerRadius=UDim.new(0,5);
v994.Name="NotifHolderUIStroke";
v994.Parent=v987;
v994.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v994.Color=_G.SectionColor;
v994.LineJoinMode=Enum.LineJoinMode.Round;
v994.Thickness=1;
v994.Transparency=0;
v994.Enabled=true;
v994.Archivable=true;
v988.Name="OkayBtn";
v988.Parent=v987;
v988.BackgroundColor3=Color3.fromRGB(190,190,190);
v988.BorderSizePixel=1;
v988.BorderColor3=_G.SectionColor;
v988.Position=UDim2.new(0,125,0,190);
v988.Size=UDim2.new(0,150,0,30);
v988.AutoButtonColor=true;
v988.Font=Enum.Font.SourceSans;
v988.Text="";
v988.TextColor3=_G.SectionTextColor;
v988.TextSize=13;
v989.CornerRadius=UDim.new(0,5);
v989.Name="OkayBtnCorner";
v989.Parent=v988;
v990.Name="OkayBtnTitle";
v990.Parent=v988;
v990.BackgroundColor3=_G.SectionColor;
v990.BackgroundTransparency=1;
v990.Size=UDim2.new(0,150,0,30);
v990.Text="OK";
v990.Font=Enum.Font.Gotham;
v990.TextColor3=Color3.fromRGB(0,0,0);
v990.TextSize=22;
v991.Name="NotificationTitle";
v991.Parent=v987;
v991.BackgroundColor3=_G.SectionColor;
v991.BackgroundTransparency=1;
v991.Position=UDim2.new(0,0,0,10);
v991.Size=UDim2.new(0,400,0,25);
v991.ZIndex=3;
v991.Font=Enum.Font.Gotham;
v991.Text="Notification";
v991.TextColor3=Color3.fromRGB(255,0,0);
v991.TextSize=22;
v995.Name="Line";
v995.Parent=v987;
v995.BackgroundColor3=_G.SectionColor;
v995.BorderSizePixel=0;
v995.Position=UDim2.new(0,10,0,40);
v995.Size=UDim2.new(0,380,0,1);
v992.Name="NotificationDesc";
v992.Parent=v987;
v992.BackgroundColor3=_G.SectionColor;
v992.BackgroundTransparency=1;
v992.Position=UDim2.new(0,10,0,80);
v992.Size=UDim2.new(0,380,0,200);
v992.Font=Enum.Font.Gotham;
v992.Text=v985;
v992.TextScaled=false;
v992.TextColor3=_G.SectionTextColor;
v992.TextSize=16;
v992.TextWrapped=true;
v992.TextXAlignment=Enum.TextXAlignment.Center;
v992.TextYAlignment=Enum.TextYAlignment.Top;
v988.MouseEnter:Connect(
function() v1:Create(v988,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(34,34,34)}):Play();
end);
v988.MouseLeave:Connect(
function() v1:Create(v988,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(25,25,25)}):Play();
end);
v988.MouseButton1Click:Connect(
function() v987:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.6,true);
wait(0.4);
v1:Create(v986,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play();
wait(0.3);
v986:Destroy();
end);
end;
local v767={};
v767.Button=
function(v1090,v1091,v1092) 
local v1093=Instance.new("Frame");
local v1094=Instance.new("UICorner");
local v1095=Instance.new("TextButton");
local v1096=Instance.new("UICorner");
local v1097=Instance.new("Frame");
local v1098=Instance.new("UICorner");
v1093.Name="Button";
v1093.Parent=v747;
v1093.BackgroundColor3=Color3.fromRGB(225,225,225);
v1093.BackgroundTransparency=1;
v1093.Size=UDim2.new(0,310,0,31);
v1094.CornerRadius=UDim.new(0,5);
v1094.Parent=v1093;
v1095.Name="TextBtn";
v1095.Parent=v1093;
v1095.BackgroundColor3=Color3.fromRGB(244,244,244);
v1095.BackgroundTransparency=0.5;
v1095.Position=UDim2.new(0,1,0,1);
v1095.Size=UDim2.new(0,308,0,29);
v1095.AutoButtonColor=false;
v1095.Font=Enum.Font.Gotham;
v1095.Text=v1091;
v1095.TextColor3=Color3.fromRGB(0,0,0);
v1095.TextSize=12;
v1096.CornerRadius=UDim.new(0,5);
v1096.Parent=v1095;
v1097.Name="Black";
v1097.Parent=v1093;
v1097.BackgroundColor3=Color3.fromRGB(0,0,0);
v1097.BackgroundTransparency=1;
v1097.BorderSizePixel=0;
v1097.Position=UDim2.new(0,1,0,1);
v1097.Size=UDim2.new(0,310,0,29);
v1098.CornerRadius=UDim.new(0,5);
v1098.Parent=v1097;
v1095.MouseEnter:Connect(
function() v1:Create(v1097,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=0.7}):Play();
end);
v1095.MouseLeave:Connect(
function() v1:Create(v1097,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{BackgroundTransparency=1}):Play();
end);
v1095.MouseButton1Click:Connect(
function() v1095.TextSize=0;
v1:Create(v1095,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextSize=15}):Play();
v1092();
end);
end;
v767.Toggle=
function(v1129,v1130,v1131,v1132) 
local v1133=false;
local v1134=Instance.new("Frame");
local v1135=Instance.new("Frame");
local v1136=Instance.new("UIStroke");
local v1137=Instance.new("UIListLayout");
local v1138=Instance.new("UICorner");
local v1139=Instance.new("ImageLabel");
local v1140=Instance.new("TextLabel");
local v1141=Instance.new("TextLabel");
local v1142=Instance.new("ImageButton");
v1134.Name=v1130 or "CheckFrame" ;
v1134.Parent=v747;
v1134.BackgroundColor3=Color3.fromRGB(150,150,150);
v1134.BackgroundTransparency=1;
v1134.BorderSizePixel=0;
v1134.Size=UDim2.new(0,38,0,30);
v1135.Name="CheckFrame2";
v1135.Parent=v1134;
v1135.BackgroundColor3=Color3.fromRGB(30,30,30);
v1135.BackgroundTransparency=1;
v1135.BorderSizePixel=0;
v1135.Position=UDim2.new(0,3,0,0);
v1135.Size=UDim2.new(0,308,0,30);
v1136.Name="UIStroke";
v1136.Parent=v1135;
v1136.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v1136.Color=Color3.fromRGB(0,191,255);
v1136.LineJoinMode=Enum.LineJoinMode.Round;
v1136.Thickness=1;
v1136.Transparency=0;
v1136.Enabled=true;
v1136.Archivable=true;
v1138.Parent=v1135;
v1138.CornerRadius=UDim.new(0,3);
v1139.Name="ImageLabel";
v1139.Parent=v1135;
v1139.BackgroundColor3=Color3.fromRGB(150,150,150);
v1139.BackgroundTransparency=1;
v1139.BorderSizePixel=0;
v1139.Position=UDim2.new( -0.018,0, -0.252,0);
v1139.Size=UDim2.new(0,45,0,45);
v1139.Image="rbxassetid://";
v1139.ImageColor3=Color3.fromRGB(0,191,255);
v1140.Name="Space";
v1140.Parent=v1135;
v1140.BackgroundColor3=Color3.fromRGB(150,150,150);
v1140.BackgroundTransparency=1;
v1140.Position=UDim2.new(0,30,0,0);
v1140.Size=UDim2.new(0,15,0,30);
v1140.Font=Enum.Font.Gotham;
v1140.Text="";
v1140.TextSize=12;
v1140.TextColor3=Color3.fromRGB(255,225,225);
v1140.TextXAlignment=Enum.TextXAlignment.Center;
v1141.Name="Title";
v1141.Parent=v1135;
v1141.BackgroundColor3=Color3.fromRGB(150,150,150);
v1141.BackgroundTransparency=1;
v1141.Position=UDim2.new(0,50,0,0);
v1141.Size=UDim2.new(0,280,0,30);
v1141.Font=Enum.Font.Gotham;
v1141.Text=v1130 or "checkBox Title" ;
v1141.TextColor3=Color3.fromRGB(0,191,255);
v1141.TextSize=12;
v1141.TextXAlignment=Enum.TextXAlignment.Left;
v1142.Name="ImageButton";
v1142.Parent=v1135;
v1142.BackgroundColor3=Color3.fromRGB(0,191,255);
v1142.BackgroundTransparency=1;
v1142.Position=UDim2.new(0,280,0,4);
v1142.Size=UDim2.new(0,23,0,23);
v1142.ZIndex=2;
v1142.Image="rbxassetid://3926311105";
v1142.ImageColor3=Color3.fromRGB(0,191,255);
v1142.ImageRectOffset=Vector2.new(940,784);
v1142.ImageRectSize=Vector2.new(48,48);
if (v1131==true) then v1142.ImageRectOffset=Vector2.new(4,836);
game.TweenService:Create(v1142,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{ImageColor3=Color3.fromRGB(255,225,225)}):Play();
v1133= not v1133;
pcall(v1132,v1133);
end v1142.MouseButton1Click:Connect(
function() 
if (v1133==false) then game.TweenService:Create(v1142,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{ImageColor3=Color3.fromRGB(255,225,225)}):Play();
v1142.ImageRectOffset=Vector2.new(4,836);
else game.TweenService:Create(v1142,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{ImageColor3=Color3.fromRGB(0,191,255)}):Play();
v1142.ImageRectOffset=Vector2.new(940,784);
end v1133= not v1133;
pcall(v1132,v1133);
end);
end;
v767.Dropdown=
function(v1214,v1215,v1216,v1217) 
local v1218=false;
local v1219=Instance.new("Frame");
local v1220=Instance.new("UICorner");
local v1221=Instance.new("TextLabel");
local v1222=Instance.new("ScrollingFrame");
local v1223=Instance.new("UIListLayout");
local v1224=Instance.new("UIPadding");
local v1225=Instance.new("TextButton");
local v1226=Instance.new("ImageLabel");
local v1227=Instance.new("UIStroke");
v1219.Name="Dropdown";
v1219.Parent=v747;
v1219.BackgroundColor3=Color3.fromRGB(28,28,28);
v1219.BackgroundTransparency=1;
v1219.ClipsDescendants=true;
v1219.Size=UDim2.new(0,310,0,31);
v1227.Name="posto";
v1227.Parent=v1219;
v1227.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v1227.Color=Color3.fromRGB(255,255,255);
v1227.LineJoinMode=Enum.LineJoinMode.Round;
v1227.Thickness=1;
v1227.Transparency=0;
v1227.Enabled=true;
v1227.Archivable=true;
v1220.CornerRadius=UDim.new(0,5);
v1220.Parent=v1219;
v1221.Name="DropTitle";
v1221.Parent=v1219;
v1221.BackgroundColor3=Color3.fromRGB(0,191,255);
v1221.BackgroundTransparency=1;
v1221.Size=UDim2.new(0,310,0,31);
v1221.Font=Enum.Font.Gotham;
v1221.Text=v1215   .. " : " ;
v1221.TextColor3=Color3.fromRGB(225,225,225);
v1221.TextSize=12;
v1222.Name="DropScroll";
v1222.Parent=v1221;
v1222.Active=true;
v1222.BackgroundColor3=Color3.fromRGB(0,191,255);
v1222.BackgroundTransparency=1;
v1222.BorderSizePixel=0;
v1222.Position=UDim2.new(0,0,0,31);
v1222.Size=UDim2.new(0,310,0,100);
v1222.CanvasSize=UDim2.new(0,0,0,0);
v1222.ScrollBarThickness=3;
v1223.Parent=v1222;
v1223.SortOrder=Enum.SortOrder.LayoutOrder;
v1223.Padding=UDim.new(0,5);
v1224.Parent=v1222;
v1224.PaddingLeft=UDim.new(0,5);
v1224.PaddingTop=UDim.new(0,5);
v1226.Name="DropImage";
v1226.Parent=v1219;
v1226.BackgroundColor3=Color3.fromRGB(0,191,255);
v1226.BackgroundTransparency=1;
v1226.Position=UDim2.new(0,280,0,6);
v1226.Rotation=180;
v1226.Size=UDim2.new(0,20,0,20);
v1226.Image="rbxassetid://6031090990";
v1225.Name="DropButton";
v1225.Parent=v1219;
v1225.BackgroundColor3=Color3.fromRGB(0,191,255);
v1225.BackgroundTransparency=1;
v1225.Size=UDim2.new(0,310,0,31);
v1225.Font=Enum.Font.SourceSans;
v1225.Text="";
v1225.TextColor3=Color3.fromRGB(0,0,0);
v1225.TextSize=14;
for v1836,v1837 in next,v1216 
do 
local v1838=Instance.new("TextButton");
v1838.Name="Item";
v1838.Parent=v1222;
v1838.BackgroundColor3=Color3.fromRGB(0,191,255);
v1838.BackgroundTransparency=1;
v1838.Size=UDim2.new(0,310,0,26);
v1838.Font=Enum.Font.Gotham;
v1838.Text=tostring(v1837);
v1838.TextColor3=Color3.fromRGB(225,225,225);
v1838.TextSize=13;
v1838.TextTransparency=0.5;
v1838.MouseEnter:Connect(
function() v1:Create(v1838,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play();
end);
v1838.MouseLeave:Connect(
function() v1:Create(v1838,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play();
end);
v1838.MouseButton1Click:Connect(
function() v1218=false;
v1219:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true);
v1:Create(v1226,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play();
v1217(v1838.Text);
v1221.Text=v1215   .. " : "   .. v1838.Text ;
end);
end v1222.CanvasSize=UDim2.new(0,0,0,v1223.AbsoluteContentSize.Y + 10 );
v1225.MouseButton1Click:Connect(
function() 
if (v1218==false) then v1218=true;
v1219:TweenSize(UDim2.new(0,310,0,131),"Out","Quad",0.3,true);
v1:Create(v1226,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play();
else v1218=false;
v1219:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true);
v1:Create(v1226,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play();
end 
end);
local v1292={};
v1292.Add=
function(v1850,v1851) 
local v1852=Instance.new("TextButton");
v1852.Name="Item";
v1852.Parent=v1222;
v1852.BackgroundColor3=Color3.fromRGB(0,191,255);
v1852.BackgroundTransparency=1;
v1852.Size=UDim2.new(0,310,0,26);
v1852.Font=Enum.Font.Gotham;
v1852.Text=tostring(v1851);
v1852.TextColor3=Color3.fromRGB(225,225,225);
v1852.TextSize=13;
v1852.TextTransparency=0.5;
v1852.MouseEnter:Connect(
function() v1:Create(v1852,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play();
end);
v1852.MouseLeave:Connect(
function() v1:Create(v1852,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.5}):Play();
end);
v1852.MouseButton1Click:Connect(
function() v1218=false;
v1219:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true);
v1:Create(v1226,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play();
v1217(v1852.Text);
v1221.Text=v1215   .. " : "   .. v1852.Text ;
end);
end;
v1292.Clear=
function(v1864) v1221.Text=tostring(v1215)   .. " : " ;
v1218=false;
v1219:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true);
v1:Create(v1226,TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play();
for v1970,v1971 in next,v1222:GetChildren() 
do 
if v1971:IsA("TextButton") then v1971:Destroy();
end 
end 
end;
return v1292;
end;
v767.Slider1=
function(v1295,v1296,v1297,v1298,v1299,v1300) 
local v1301={};
local v1302=Instance.new("Frame");
local v1303=Instance.new("Frame");
local v1304=Instance.new("UIStroke");
local v1305=Instance.new("UICorner");
local v1306=Instance.new("ImageLabel");
local v1307=Instance.new("TextLabel");
local v1308=Instance.new("TextLabel");
local v1309=Instance.new("Frame");
local v1310=Instance.new("Frame");
local v1311=Instance.new("Frame");
local v1312=Instance.new("UICorner");
local v1313=Instance.new("UICorner");
local v1314=Instance.new("Frame");
local v1315=Instance.new("TextBox");
local v1316=Instance.new("UIStroke");
local v1317=Instance.new("TextButton");
local v1318=Instance.new("UICorner");
local v1319=Instance.new("UICorner");
v1302.Name=v1296 or "SliderFrame" ;
v1302.Parent=v747;
v1302.BackgroundColor3=Color3.fromRGB(28,28,28);
v1302.BackgroundTransparency=1;
v1302.BorderSizePixel=0;
v1302.Size=UDim2.new(0,300,0,55);
v1303.Name="SliderFrame_2";
v1303.Parent=v1302;
v1303.BackgroundColor3=Color3.fromRGB(28,28,28);
v1303.BackgroundTransparency=1;
v1303.BorderSizePixel=0;
v1303.Position=UDim2.new(0,3,0,0);
v1303.Size=UDim2.new(0,308,0,55);
v1304.Name="UIStroke";
v1304.Parent=v1303;
v1304.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v1304.Color=Color3.fromRGB(0,191,255);
v1304.LineJoinMode=Enum.LineJoinMode.Round;
v1304.Thickness=1;
v1304.Transparency=0;
v1304.Enabled=true;
v1304.Archivable=true;
v1305.Parent=v1303;
v1305.CornerRadius=UDim.new(0,3);
v1306.Name="ImageLabel";
v1306.Parent=v1303;
v1306.BackgroundColor3=Color3.fromRGB(150,150,150);
v1306.BackgroundTransparency=1;
v1306.BorderSizePixel=0;
v1306.Position=UDim2.new(0,5,0,5);
v1306.Size=UDim2.new(0,18,0,18);
v1306.Image="rbxassetid://";
v1306.ImageColor3=Color3.fromRGB(0,191,255);
v1307.Name="Space";
v1307.Parent=v1303;
v1307.BackgroundColor3=Color3.fromRGB(150,150,150);
v1307.BackgroundTransparency=1;
v1307.Position=UDim2.new(0,30,0,0);
v1307.Size=UDim2.new(0,15,0,30);
v1307.Font=Enum.Font.Gotham;
v1307.Text="";
v1307.TextSize=15;
v1307.TextColor3=Color3.fromRGB(0,191,255);
v1307.TextXAlignment=Enum.TextXAlignment.Center;
v1308.Name="Title";
v1308.Parent=v1303;
v1308.BackgroundColor3=Color3.fromRGB(150,150,150);
v1308.BackgroundTransparency=1;
v1308.Position=UDim2.new(0,50,0,0);
v1308.Size=UDim2.new(0,280,0,30);
v1308.Font=Enum.Font.Gotham;
v1308.Text=v1296 or "Slider Title" ;
v1308.TextColor3=Color3.fromRGB(0,191,255);
v1308.TextSize=12;
v1308.TextXAlignment=Enum.TextXAlignment.Left;
v1309.Name="SliderInput";
v1309.Parent=v1303;
v1309.BackgroundColor3=Color3.fromRGB(0,191,255);
v1309.BackgroundTransparency=0.7;
v1309.BorderSizePixel=0;
v1309.Position=UDim2.new(0,8,0,37);
v1309.Size=UDim2.new(0,290,0,4);
v1313.CornerRadius=UDim.new(0,100000);
v1313.Parent=v1309;
v1310.Name="SliderButton";
v1310.Parent=v1309;
v1310.BackgroundColor3=Color3.fromRGB(150,150,150);
v1310.BackgroundTransparency=1;
v1310.BorderSizePixel=0;
v1310.Position=UDim2.new(0,0,0, -7);
v1310.Size=UDim2.new(0,290,0,25);
v1311.Name="SliderCount";
v1311.Parent=v1310;
v1311.BackgroundColor3=Color3.fromRGB(0,191,255);
v1311.BackgroundTransparency=0.3;
v1311.BorderSizePixel=0;
v1311.Position=UDim2.new(0,v1299,0,0);
v1311.Size=UDim2.new(0,18,0,18);
v1317.Name="Title_2";
v1317.Parent=v1310;
v1317.AnchorPoint=Vector2.new(0,0);
v1317.BackgroundColor3=Color3.fromRGB(0,191,255);
v1317.AutoButtonColor=false;
v1317.BackgroundTransparency=1;
v1317.Position=UDim2.new(0,v1299,0,0);
v1317.Size=UDim2.new(0,18,0,18);
v1317.Font=Enum.Font.GothamBold;
v1317.Text=tostring((v1299 and math.floor(((v1299/v1298) * (v1298-v1297)) + v1297 )) or 0 );
v1317.TextColor3=Color3.fromRGB(0,191,255);
v1317.TextSize=8;
v1317.TextXAlignment=Enum.TextXAlignment.Center;
v1318.Parent=v1317;
v1318.CornerRadius=UDim.new(0,100000);
v1312.CornerRadius=UDim.new(0,100000);
v1312.Parent=v1311;
v1316.Name="SliderStroke";
v1316.Parent=v1314;
v1316.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v1316.Color=Color3.fromRGB(0,191,255);
v1316.LineJoinMode=Enum.LineJoinMode.Round;
v1316.Thickness=1;
v1316.Transparency=0.5;
v1316.Enabled=true;
v1316.Archivable=true;
v1314.Name="BoxFrame";
v1314.Parent=v1303;
v1314.BackgroundColor3=Color3.fromRGB(20,20,20);
v1314.BackgroundTransparency=1;
v1314.Size=UDim2.new(0,50,0,15);
v1314.Position=UDim2.new(0,240,0,8);
v1315.Name="SliderBox";
v1315.Parent=v1314;
v1315.BackgroundColor3=Color3.fromRGB(200,0,0);
v1315.BackgroundTransparency=1;
v1315.Position=UDim2.new(0,0,0,1.65);
v1315.Size=UDim2.new(0,50,0,15);
v1315.ClearTextOnFocus=false;
v1315.Font=Enum.Font.GothamBold;
v1315.Text=tostring((v1299 and math.floor(((v1299/v1298) * (v1298-v1297)) + v1297 )) or 0 );
v1315.TextColor3=Color3.fromRGB(0,191,255);
v1315.TextSize=9;
v1315.TextTransparency=0;
v1315.TextXAlignment=Enum.TextXAlignment.Center;
v1315.TextEditable=true;
v1319.Parent=v1314;
v1319.CornerRadius=UDim.new(0,2);
local v1452;
local v1453;
local v1454;
local v1455=v1310;
local 
function v1455(v1866) 
local v1867=UDim2.new(math.clamp((v1866.Position.X-v1310.AbsolutePosition.X)/v1310.AbsoluteSize.X ,0,1),0,0,0);
v1311:TweenPosition(v1867,Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.08,true);
v1317:TweenPosition(v1867,Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.12,true);
local v1868=math.floor((((v1867.X.Scale * v1298)/v1298) * (v1298-v1297)) + v1297 );
v1315.Text=tostring(v1868);
v1317.Text=tostring(v1868);
pcall(v1300,v1868,v1867);
end v1310.InputBegan:Connect(
function(v1871) 
if ((v1871.UserInputType==Enum.UserInputType.MouseButton1) or (v1871.UserInputType==Enum.UserInputType.Touch)) then v1452=true;
v1454=v1871;
v1453=v1871.Position.X;
slidein=v1310.AbsolutePosition.X;
game.TweenService:Create(v1311,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{BackgroundTransparency=0,Size=UDim2.new(0,14,0,14)}):Play();
game.TweenService:Create(v1317,TweenInfo.new(0.12,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{AnchorPoint=Vector2.new(0.22,0.8),TextSize=13,BackgroundTransparency=0,Size=UDim2.new(0,25,0,25)}):Play();
game.TweenService:Create(v1315,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{TextTransparency=0}):Play();
game.TweenService:Create(v1309,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{BackgroundTransparency=0.5}):Play();
game.TweenService:Create(v1316,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{Transparency=0}):Play();
end v1871.Changed:Connect(
function(v1972) 
if (v1972.UserInputType==Enum.UserInputState.End) then v1452=false;
end 
end);
end);
v1310.InputEnded:Connect(
function(v1872) 
if ((v1872.UserInputType==Enum.UserInputType.MouseMovement) or (v1872.UserInputType==Enum.UserInputType.Touch)) then v1452=false;
v1454=v1872;
game.TweenService:Create(v1311,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{BackgroundTransparency=0.3,Size=UDim2.new(0,18,0,18)}):Play();
game.TweenService:Create(v1317,TweenInfo.new(0.12,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{AnchorPoint=Vector2.new(0,0),TextSize=8,BackgroundTransparency=1,Size=UDim2.new(0,18,0,18)}):Play();
game.TweenService:Create(v1315,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{TextTransparency=0.5}):Play();
game.TweenService:Create(v1309,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{BackgroundTransparency=0.7}):Play();
game.TweenService:Create(v1316,TweenInfo.new(0.08,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{Transparency=0.5}):Play();
end 
end);
v0.InputChanged:Connect(
function(v1873) 
if ((v1873==v1454) and v1452) then v1455(v1873);
end 
end);
function set(v1874) 
if (v1874=="Text") then 
if tonumber(v1315.Text) then 
if (tonumber(v1315.Text)<=v1298) then Value=v1315.Text;
v1317.Text=v1315.Text;
v1311:TweenPosition(UDim2.new(((tonumber(v1315.Text) or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new(((tonumber(v1315.Text) or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
end 
if (tonumber(v1315.Text)>v1298) then v1315.Text=v1298;
v1317.Text=v1298;
Value=v1298;
v1311:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
end 
if (tonumber(v1315.Text)>=v1297) then Value=v1315.Text;
v1317.Text=v1315.Text;
v1311:TweenPosition(UDim2.new(((tonumber(v1315.Text) or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new(((tonumber(v1315.Text) or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
end 
if (tonumber(v1315.Text)<v1297) then Value=v1297;
v1317=v1297;
v1311.Position=UDim2.new(((v1297 or v1297) -v1297)/(v1298-v1297) ,0,0,0);
v1317.Position=UDim2.new(((v1297 or v1297) -v1297)/(v1298-v1297) ,0,0,0);
pcall(
function() v1300(Value);
end);
end else v1315.Text="" or Value ;
v1317.Text=Value;
end 
end 
end v1315.Focused:Connect(
function() v1315.Changed:Connect(set);
end);
v1315.FocusLost:Connect(
function(v1875) 
if  not v1875 then 
if (v1315.Text=="") then v1315.Text=v1297;
v1317.Text=v1297;
Value=v1297;
v1311:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
end 
if (tonumber(v1315.Text)>tonumber(v1298)) then Value=v1298;
v1315.Text=v1298;
v1317.Text=v1298;
v1311:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
else Value=tonumber(v1315.Text);
end 
if (tonumber(v1315.Text)<v1297) then v1315.Text=v1297;
v1317.Text=v1297;
Value=v1297;
v1311:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
else Value=tonumber(v1315.Text);
end 
end 
if (tonumber(v1315.Text)>v1298) then v1315.Text=v1298;
v1317.Text=v1298;
Value=v1298;
v1311:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new(((v1298 or v1297) -v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
else Value=tonumber(v1315.Text);
end 
if (tonumber(v1315.Text)<v1297) then v1315.Text=v1297;
v1317.Text=v1297;
Value=v1297;
v1311.Position=UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0);
v1317.Position=UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0);
pcall(
function() v1300(Value);
end);
else Value=tonumber(v1315.Text);
end 
if (v1315.Text=="") then v1315.Text=v1297;
v1317.Text=v1297;
Value=v1297;
v1311:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.08,true);
v1317:TweenPosition(UDim2.new((v1297-v1297)/(v1298-v1297) ,0,0,0),"InOut","Linear",0.12,true);
pcall(
function() v1300(Value);
end);
end 
end);
return sliderfunc;
end;
v767.Slider=
function(v1456,v1457,v1458,v1459,v1460,v1461) 
local v1462=Instance.new("Frame");
local v1463=Instance.new("UICorner");
local v1464=Instance.new("Frame");
local v1465=Instance.new("UICorner");
local v1466=Instance.new("TextLabel");
local v1467=Instance.new("Frame");
local v1468=Instance.new("TextButton");
local v1469=Instance.new("Frame");
local v1470=Instance.new("Frame");
local v1471=Instance.new("UICorner");
local v1472=Instance.new("UICorner");
local v1473=Instance.new("Frame");
local v1474=Instance.new("UICorner");
local v1475=Instance.new("Frame");
local v1476=Instance.new("UICorner");
local v1477=Instance.new("TextBox");
local v1478=Instance.new("UICorner");
local v1479=Instance.new("UIStroke");
v1462.Name="Slider";
v1462.Parent=v747;
v1462.BackgroundColor3=_G.Color;
v1462.BackgroundTransparency=0;
v1462.Size=UDim2.new(0,310,0,51);
v1463.CornerRadius=UDim.new(0,5);
v1463.Name="slidercorner";
v1463.Parent=v1462;
v1464.Name="sliderr";
v1464.Parent=v1462;
v1464.BackgroundTransparency=0;
v1464.BackgroundColor3=Color3.fromRGB(30,30,30);
v1464.Position=UDim2.new(0,1,0,1);
v1464.Size=UDim2.new(0,308,0,49);
v1465.CornerRadius=UDim.new(0,5);
v1465.Name="sliderrcorner";
v1465.Parent=v1464;
v1466.Name="SliderLabel";
v1466.Parent=v1464;
v1466.BackgroundColor3=Color3.fromRGB(0,191,255);
v1466.BackgroundTransparency=1;
v1466.Position=UDim2.new(0,15,0,0);
v1466.Size=UDim2.new(0,180,0,26);
v1466.Font=Enum.Font.Gotham;
v1466.Text=v1457;
v1466.TextColor3=Color3.fromRGB(0,191,255);
v1466.TextSize=12;
v1466.TextTransparency=0;
v1466.TextXAlignment=Enum.TextXAlignment.Left;
v1467.Name="HAHA";
v1467.Parent=v1464;
v1467.BackgroundColor3=Color3.fromRGB(0,191,255);
v1467.BackgroundTransparency=1;
v1467.Size=UDim2.new(0,290,0,29);
v1468.Name="AHEHE";
v1468.Parent=v1464;
v1468.BackgroundColor3=Color3.fromRGB(0,191,255);
v1468.BackgroundTransparency=1;
v1468.Position=UDim2.new(0,10,0,35);
v1468.Size=UDim2.new(0,290,0,5);
v1468.Font=Enum.Font.SourceSans;
v1468.Text="";
v1468.TextColor3=Color3.fromRGB(0,0,0);
v1468.TextSize=14;
v1469.Name="bar";
v1469.Parent=v1468;
v1469.BackgroundColor3=_G.BGColor_2;
v1469.Size=UDim2.new(0,290,0,5);
v1470.Name="bar1";
v1470.Parent=v1469;
v1470.BackgroundColor3=_G.Color;
v1470.BackgroundTransparency=0;
v1470.Size=UDim2.new(v1460/v1459 ,0,0,5);
v1471.CornerRadius=UDim.new(0,5);
v1471.Name="bar1corner";
v1471.Parent=v1470;
v1472.CornerRadius=UDim.new(0,5);
v1472.Name="barcorner";
v1472.Parent=v1469;
v1473.Name="circlebar";
v1473.Parent=v1470;
v1473.BackgroundColor3=Color3.fromRGB(0,191,255);
v1473.Position=UDim2.new(1, -2,0, -3);
v1473.Size=UDim2.new(0,10,0,10);
v1474.CornerRadius=UDim.new(0,100);
v1474.Parent=v1473;
v1475.Name="slidervalue";
v1475.Parent=v1464;
v1475.BackgroundColor3=_G.Color;
v1475.BackgroundTransparency=1;
v1475.Position=UDim2.new(0,245,0,5);
v1475.Size=UDim2.new(0,65,0,18);
v1476.CornerRadius=UDim.new(0,5);
v1476.Name="valuecorner";
v1476.Parent=v1475;
v1477.Parent=v1475;
v1477.BackgroundColor3=_G.BGColor_2;
v1477.Position=UDim2.new(0,0,0,0);
v1477.Size=UDim2.new(0,60,0,20);
v1477.Font=Enum.Font.Gotham;
v1477.TextColor3=Color3.fromRGB(0,191,255);
v1477.TextSize=9;
v1477.Text=v1460;
v1477.TextTransparency=0;
v1479.Name="posto";
v1479.Parent=v1477;
v1479.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
v1479.Color=Color3.fromRGB(0,191,255);
v1479.LineJoinMode=Enum.LineJoinMode.Round;
v1479.Thickness=1;
v1479.Transparency=0;
v1479.Enabled=true;
v1479.Archivable=true;
v1478.CornerRadius=UDim.new(0,5);
v1478.Parent=v1477;
local v1580=game.Players.LocalPlayer:GetMouse();
local v1581=game:GetService("UserInputService");
if (Value==nil) then Value=v1460;
pcall(
function() v1461(Value);
end);
end v1468.MouseButton1Down:Connect(
function() Value=math.floor((((tonumber(v1459) -tonumber(v1458))/300) * v1470.AbsoluteSize.X) + tonumber(v1458) ) or 0 ;
pcall(
function() v1461(Value);
end);
v1470.Size=UDim2.new(0,math.clamp(v1580.X-v1470.AbsolutePosition.X ,0,300),0,5);
v1473.Position=UDim2.new(0,math.clamp((v1580.X-v1470.AbsolutePosition.X) -2 ,0,290),0, -3);
moveconnection=v1580.Move:Connect(
function() v1477.Text=Value;
Value=math.floor((((tonumber(v1459) -tonumber(v1458))/300) * v1470.AbsoluteSize.X) + tonumber(v1458) );
pcall(
function() v1461(Value);
end);
v1470.Size=UDim2.new(0,math.clamp(v1580.X-v1470.AbsolutePosition.X ,0,300),0,5);
v1473.Position=UDim2.new(0,math.clamp((v1580.X-v1470.AbsolutePosition.X) -2 ,0,290),0, -3);
end);
releaseconnection=v1581.InputEnded:Connect(
function(v1976) 
if (v1976.UserInputType==Enum.UserInputType.MouseButton1) then Value=math.floor((((tonumber(v1459) -tonumber(v1458))/300) * v1470.AbsoluteSize.X) + tonumber(v1458) );
pcall(
function() v1461(Value);
end);
v1470.Size=UDim2.new(0,math.clamp(v1580.X-v1470.AbsolutePosition.X ,0,300),0,5);
v1473.Position=UDim2.new(0,math.clamp((v1580.X-v1470.AbsolutePosition.X) -2 ,0,290),0, -3);
moveconnection:Disconnect();
releaseconnection:Disconnect();
end 
end);
end);
releaseconnection=v1581.InputEnded:Connect(
function(v1878) 
if (v1878.UserInputType==Enum.UserInputType.MouseButton1) then Value=math.floor((((tonumber(v1459) -tonumber(v1458))/300) * v1470.AbsoluteSize.X) + tonumber(v1458) );
v1477.Text=Value;
end 
end);
v1477.FocusLost:Connect(
function() 
if (tonumber(v1477.Text)>v1459) then v1477.Text=v1459;
end v1470.Size=UDim2.new((v1477.Text or 0)/v1459 ,0,0,5);
v1473.Position=UDim2.new(1, -2,0, -3);
v1477.Text=tostring(v1477.Text and math.floor(((v1477.Text/v1459) * (v1459-v1458)) + v1458 ) );
pcall(v1461,v1477.Text);
end);
end;
v767.Textbox=
function(v1582,v1583,v1584,v1585) 
local v1586=Instance.new("Frame");
local v1587=Instance.new("UICorner");
local v1588=Instance.new("Frame");
local v1589=Instance.new("UICorner");
local v1590=Instance.new("TextLabel");
local v1591=Instance.new("TextButton");
local v1592=Instance.new("TextBox");
local v1593=Instance.new("UICorner");
v1586.Name="Textbox";
v1586.Parent=v747;
v1586.BackgroundColor3=_G.Color;
v1586.BackgroundTransparency=0;
v1586.Size=UDim2.new(0,310,0,31);
v1587.CornerRadius=UDim.new(0,5);
v1587.Name="TextboxCorner";
v1587.Parent=v1586;
v1588.Name="Textboxx";
v1588.Parent=v1586;
v1588.BackgroundColor3=Color3.fromRGB(30,30,30);
v1588.Position=UDim2.new(0,1,0,1);
v1588.Size=UDim2.new(0,310,0,29);
v1589.CornerRadius=UDim.new(0,5);
v1589.Name="TextboxxCorner";
v1589.Parent=v1588;
v1590.Name="TextboxLabel";
v1590.Parent=v1586;
v1590.BackgroundColor3=Color3.fromRGB(0,191,255);
v1590.BackgroundTransparency=1;
v1590.Position=UDim2.new(0,15,0,0);
v1590.Text=v1583;
v1590.Size=UDim2.new(0,145,0,31);
v1590.Font=Enum.Font.Gotham;
v1590.TextColor3=Color3.fromRGB(225,225,225);
v1590.TextSize=16;
v1590.TextTransparency=0;
v1590.TextXAlignment=Enum.TextXAlignment.Left;
v1591.Name="txtbtn";
v1591.Parent=v1586;
v1591.BackgroundColor3=Color3.fromRGB(0,191,255);
v1591.BackgroundTransparency=1;
v1591.Position=UDim2.new(0,1,0,1);
v1591.Size=UDim2.new(0,310,0,29);
v1591.Font=Enum.Font.SourceSans;
v1591.Text="";
v1591.TextColor3=Color3.fromRGB(0,0,0);
v1591.TextSize=14;
v1592.Name="RealTextbox";
v1592.Parent=v1586;
v1592.BackgroundColor3=Color3.fromRGB(35,35,35);
v1592.BackgroundTransparency=0;
v1592.Position=UDim2.new(0,230,0,4);
v1592.Size=UDim2.new(0,100,0,24);
v1592.Font=Enum.Font.Gotham;
v1592.Text="";
v1592.TextColor3=Color3.fromRGB(225,225,225);
v1592.TextSize=11;
v1592.TextTransparency=0;
v1592.FocusLost:Connect(
function() v1585(v1592.Text);
if v1584 then v1592.Text="";
end 
end);
v1593.CornerRadius=UDim.new(0,5);
v1593.Parent=v1592;
end;
v767.Label=
function(v1648,v1649) 
local v1650=Instance.new("TextLabel");
local v1651=Instance.new("UIPadding");
local v1652={};
v1650.Name="Label";
v1650.Parent=v747;
v1650.BackgroundColor3=Color3.fromRGB(0,191,255);
v1650.BackgroundTransparency=1;
v1650.Size=UDim2.new(0,325,0,20);
v1650.Font=Enum.Font.Gotham;
v1650.TextColor3=Color3.fromRGB(225,225,225);
v1650.TextSize=12;
v1650.Text=v1649;
v1650.TextXAlignment=Enum.TextXAlignment.Left;
v1651.PaddingLeft=UDim.new(0,15);
v1651.Parent=v1650;
v1651.Name="PaddingLabel";
v1652.Set=
function(v1882,v1883) v1650.Text=v1883;
end;
return v1652;
end;
v767.Label1=
function(v1669,v1670) 
local v1671=Instance.new("TextLabel");
local v1672=Instance.new("UIPadding");
local v1673={};
v1671.Name="Label1";
v1671.Parent=v747;
v1671.BackgroundColor3=Color3.fromRGB(0,191,255);
v1671.BackgroundTransparency=1;
v1671.Size=UDim2.new(0,325,0,20);
v1671.Font=Enum.Font.Gotham;
v1671.TextColor3=Color3.fromRGB(225,225,225);
v1671.TextSize=12;
v1671.Text=v1670;
v1671.TextXAlignment=Enum.TextXAlignment.Left;
v1672.PaddingLeft=UDim.new(0,15);
v1672.Parent=v1671;
v1672.Name="PaddingLabel1";
v1673.Refresh=
function(v1885,v1886) v1671.Text=v1886;
end;
return v1673;
end;
v767.Seperator=
function(v1690,v1691) 
local v1692=Instance.new("Frame");
local v1693=Instance.new("Frame");
local v1694=Instance.new("TextLabel");
local v1695=Instance.new("Frame");
v1692.Name="Seperator";
v1692.Parent=v747;
v1692.BackgroundColor3=Color3.fromRGB(0,191,255);
v1692.BackgroundTransparency=1;
v1692.Size=UDim2.new(0,290,0,20);
v1693.Name="Sep1";
v1693.Parent=v1692;
v1693.BackgroundColor3=_G.Color;
v1693.BorderSizePixel=0;
v1693.Position=UDim2.new(0,0,0,10);
v1693.Size=UDim2.new(0,80,0,1);
v1694.Name="Sep2";
v1694.Parent=v1692;
v1694.BackgroundColor3=Color3.fromRGB(0,191,255);
v1694.BackgroundTransparency=1;
v1694.Position=UDim2.new(0,120,0,0);
v1694.Size=UDim2.new(0,80,0,20);
v1694.Font=Enum.Font.Gotham;
v1694.Text=v1691;
v1694.TextColor3=Color3.fromRGB(0,191,255);
v1694.TextSize=14;
v1695.Name="Sep3";
v1695.Parent=v1692;
v1695.BackgroundColor3=_G.Color;
v1695.BorderSizePixel=0;
v1695.Position=UDim2.new(0,240,0,10);
v1695.Size=UDim2.new(0,80,0,1);
end;
v767.Line=
function(v1724) 
local v1725=Instance.new("Frame");
local v1726=Instance.new("Frame");
v1725.Name="Linee";
v1725.Parent=v747;
v1725.BackgroundColor3=Color3.fromRGB(0,191,255);
v1725.BackgroundTransparency=1;
v1725.Position=UDim2.new(0,0,0.119999997,0);
v1725.Size=UDim2.new(0,310,0,20);
v1726.Name="Line";
v1726.Parent=v1725;
v1726.BackgroundColor3=_G.Color;
v1726.BorderSizePixel=0;
v1726.Position=UDim2.new(0,0,0,10);
v1726.Size=UDim2.new(0,325,0,1);
end;
return v767;
end;
return v345;
end;
local v28=Instance.new("ScreenGui");
local v29=Instance.new("ImageButton");
local v30=Instance.new("UICorner");
v28.Name="ToggleUI";
v28.Parent=game.CoreGui;
v28.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;
v29.Name="ToggleButton";
v29.Parent=v28;
v29.BackgroundColor3=Color3.fromRGB(255,255,255);
v29.BorderSizePixel=0;
v29.Position=UDim2.new(0.120833337,0,0.0952890813,0);
v29.Size=UDim2.new(0,53.5,0,53.5);
v29.BackgroundTransparency=1;
v29.Image="rbxassetid://106674226087364";
v29.Draggable=true;
v29.MouseButton1Click:Connect(
function() game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game);
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game);
end);
v30.CornerRadius=UDim.new(0,10);
v30.Parent=v29;
if (game.PlaceId==2753915549) then World1=true;
elseif (game.PlaceId==4442272183) then World2=true;
elseif (game.PlaceId==7449423635) then World3=true;
end 
function CheckQuest() MyLevel=game:GetService("Players").LocalPlayer.Data.Level.Value;
if World1 then 
if ((MyLevel==1) or (MyLevel<=9)) then Mon="Bandit";
LevelQuest=1;
NameQuest="BanditQuest1";
NameMon="Bandit";
CFrameQuest=CFrame.new(1059,17,1546);
CFrameMon=CFrame.new(943,45,1562);
elseif ((MyLevel==10) or (MyLevel<=14)) then Mon="Monkey";
LevelQuest=1;
NameQuest="JungleQuest";
NameMon="Monkey";
CFrameQuest=CFrame.new( -1598,37,153);
CFrameMon=CFrame.new( -1524,50,37);
elseif ((MyLevel==15) or (MyLevel<=29)) then Mon="Gorilla";
LevelQuest=2;
NameQuest="JungleQuest";
NameMon="Gorilla";
CFrameQuest=CFrame.new( -1598,37,153);
CFrameMon=CFrame.new( -1128,40, -451);
elseif ((MyLevel==30) or (MyLevel<=39)) then Mon="Pirate";
LevelQuest=1;
NameQuest="BuggyQuest1";
NameMon="Pirate";
CFrameQuest=CFrame.new( -1140,4,3829);
CFrameMon=CFrame.new( -1262,40,3905);
elseif ((MyLevel==40) or (MyLevel<=59)) then Mon="Brute";
LevelQuest=2;
NameQuest="BuggyQuest1";
NameMon="Brute";
CFrameQuest=CFrame.new( -1140,4,3829);
CFrameMon=CFrame.new( -976,55,4304);
elseif ((MyLevel==60) or (MyLevel<=74)) then Mon="Desert Bandit";
LevelQuest=1;
NameQuest="DesertQuest";
NameMon="Desert Bandit";
CFrameQuest=CFrame.new(897,6,4389);
CFrameMon=CFrame.new(924,7,4482);
elseif ((MyLevel==75) or (MyLevel<=89)) then Mon="Desert Officer";
LevelQuest=2;
NameQuest="DesertQuest";
NameMon="Desert Officer";
CFrameQuest=CFrame.new(897,6,4389);
CFrameMon=CFrame.new(1608,9,4371);
elseif ((MyLevel==90) or (MyLevel<=99)) then Mon="Snow Bandit";
LevelQuest=1;
NameQuest="SnowQuest";
NameMon="Snow Bandit";
CFrameQuest=CFrame.new(1385,87, -1298);
CFrameMon=CFrame.new(1362,120, -1531);
elseif ((MyLevel==100) or (MyLevel<=119)) then Mon="Snowman";
LevelQuest=2;
NameQuest="SnowQuest";
NameMon="Snowman";
CFrameQuest=CFrame.new(1385,87, -1298);
CFrameMon=CFrame.new(1243,140, -1437);
elseif ((MyLevel==120) or (MyLevel<=149)) then Mon="Chief Petty Officer";
LevelQuest=1;
NameQuest="MarineQuest2";
NameMon="Chief Petty Officer";
CFrameQuest=CFrame.new( -5035,29,4326);
CFrameMon=CFrame.new( -4881,23,4274);
elseif ((MyLevel==150) or (MyLevel<=174)) then Mon="Sky Bandit";
LevelQuest=1;
NameQuest="SkyQuest";
NameMon="Sky Bandit";
CFrameQuest=CFrame.new( -4844,718, -2621);
CFrameMon=CFrame.new( -4953,296, -2899);
elseif ((MyLevel==175) or (MyLevel<=189)) then Mon="Dark Master";
LevelQuest=2;
NameQuest="SkyQuest";
NameMon="Dark Master";
CFrameQuest=CFrame.new( -4844,718, -2621);
CFrameMon=CFrame.new( -5260,391, -2229);
elseif ((MyLevel==190) or (MyLevel<=209)) then Mon="Prisoner";
LevelQuest=1;
NameQuest="PrisonerQuest";
NameMon="Prisoner";
CFrameQuest=CFrame.new(5306,2,477);
CFrameMon=CFrame.new(5099,"-0",474);
elseif ((MyLevel==210) or (MyLevel<=249)) then Mon="Dangerous Prisoner";
LevelQuest=2;
NameQuest="PrisonerQuest";
NameMon="Dangerous Prisoner";
CFrameQuest=CFrame.new(5306,2,477);
CFrameMon=CFrame.new(5655,16,866);
elseif ((MyLevel==250) or (MyLevel<=274)) then Mon="Toga Warrior";
LevelQuest=1;
NameQuest="ColosseumQuest";
NameMon="Toga Warrior";
CFrameQuest=CFrame.new( -1581,7, -2982);
CFrameMon=CFrame.new( -1820,51, -2741);
elseif ((MyLevel==275) or (MyLevel<=299)) then Mon="Gladiator";
LevelQuest=2;
NameQuest="ColosseumQuest";
NameMon="Gladiator";
CFrameQuest=CFrame.new( -1581,7, -2982);
CFrameMon=CFrame.new( -1268,30, -2996);
elseif ((MyLevel==300) or (MyLevel<=324)) then Mon="Military Soldier";
LevelQuest=1;
NameQuest="MagmaQuest";
NameMon="Military Soldier";
CFrameQuest=CFrame.new( -5319,12,8515);
CFrameMon=CFrame.new( -5335,46,8638);
elseif ((MyLevel==325) or (MyLevel<=374)) then Mon="Military Spy";
LevelQuest=2;
NameQuest="MagmaQuest";
NameMon="Military Spy";
CFrameQuest=CFrame.new( -5319,12,8515);
CFrameMon=CFrame.new( -5803,86,8829);
elseif ((MyLevel==375) or (MyLevel<=399)) then Mon="Fishman Warrior";
LevelQuest=1;
NameQuest="FishmanQuest";
NameMon="Fishman Warrior";
CFrameQuest=CFrame.new(61122,18,1567);
CFrameMon=CFrame.new(60998,50,1534);
elseif ((MyLevel==400) or (MyLevel<=449)) then Mon="Fishman Commando";
LevelQuest=2;
NameQuest="FishmanQuest";
NameMon="Fishman Commando";
CFrameQuest=CFrame.new(61122,18,1567);
CFrameMon=CFrame.new(61866,55,1655);
elseif ((MyLevel==450) or (MyLevel<=474)) then Mon="God's Guard";
LevelQuest=1;
NameQuest="SkyExp1Quest";
NameMon="God's Guard";
CFrameQuest=CFrame.new( -4720,846, -1951);
CFrameMon=CFrame.new( -4720,846, -1951);
elseif ((MyLevel==475) or (MyLevel<=524)) then Mon="Shanda";
LevelQuest=2;
NameQuest="SkyExp1Quest";
NameMon="Shanda";
CFrameQuest=CFrame.new( -7861,5545, -381);
CFrameMon=CFrame.new( -7741,5580, -395);
elseif ((MyLevel==525) or (MyLevel<=549)) then Mon="Royal Squad";
LevelQuest=1;
NameQuest="SkyExp2Quest";
NameMon="Royal Squad";
CFrameQuest=CFrame.new( -7903,5636, -1412);
CFrameMon=CFrame.new( -7727,5650, -1410);
elseif ((MyLevel==550) or (MyLevel<=624)) then Mon="Royal Soldier";
LevelQuest=2;
NameQuest="SkyExp2Quest";
NameMon="Royal Soldier";
CFrameQuest=CFrame.new( -7903,5636, -1412);
CFrameMon=CFrame.new( -7894,5640, -1629);
elseif ((MyLevel==625) or (MyLevel<=649)) then Mon="Galley Pirate";
LevelQuest=1;
NameQuest="FountainQuest";
NameMon="Galley Pirate";
CFrameQuest=CFrame.new(5258,39,4052);
CFrameMon=CFrame.new(5391,70,4023);
elseif (MyLevel>=650) then Mon="Galley Captain";
LevelQuest=2;
NameQuest="FountainQuest";
NameMon="Galley Captain";
CFrameQuest=CFrame.new(5258,39,4052);
CFrameMon=CFrame.new(5985,70,4790);
end elseif World2 then 
if ((MyLevel==700) or (MyLevel<=724)) then Mon="Raider";
LevelQuest=1;
NameQuest="Area1Quest";
NameMon="Raider";
CFrameQuest=CFrame.new( -427,73,1835);
CFrameMon=CFrame.new( -614,90,2240);
elseif ((MyLevel==725) or (MyLevel<=774)) then Mon="Mercenary";
LevelQuest=2;
NameQuest="Area1Quest";
NameMon="Mercenary";
CFrameQuest=CFrame.new( -427,73,1835);
CFrameMon=CFrame.new( -867,110,1621);
elseif ((MyLevel==775) or (MyLevel<=874)) then Mon="Swan Pirate";
LevelQuest=1;
NameQuest="Area2Quest";
NameMon="Swan Pirate";
CFrameQuest=CFrame.new(635,73,919);
CFrameMon=CFrame.new(635,73,919);
elseif ((MyLevel==875) or (MyLevel<=899)) then Mon="Marine Lieutenant";
LevelQuest=1;
NameQuest="MarineQuest3";
NameMon="Marine Lieutenant";
CFrameQuest=CFrame.new( -2441,73, -3219);
CFrameMon=CFrame.new( -2552,110, -3050);
elseif ((MyLevel==900) or (MyLevel<=949)) then Mon="Marine Captain";
LevelQuest=2;
NameQuest="MarineQuest3";
NameMon="Marine Captain";
CFrameQuest=CFrame.new( -2441,73, -3219);
CFrameMon=CFrame.new( -1695,110, -3299);
elseif ((MyLevel==950) or (MyLevel<=974)) then Mon="Zombie";
LevelQuest=1;
NameQuest="ZombieQuest";
NameMon="Zombie";
CFrameQuest=CFrame.new( -5495,48, -794);
CFrameMon=CFrame.new( -5715,90, -917);
elseif ((MyLevel==975) or (MyLevel<=999)) then Mon="Vampire";
LevelQuest=2;
NameQuest="ZombieQuest";
NameMon="Vampire";
CFrameQuest=CFrame.new( -5495,48, -794);
CFrameMon=CFrame.new( -6027,50, -1130);
elseif ((MyLevel==1000) or (MyLevel<=1049)) then Mon="Snow Trooper";
LevelQuest=1;
NameQuest="SnowMountainQuest";
NameMon="Snow Trooper";
CFrameQuest=CFrame.new(607,401, -5371);
CFrameMon=CFrame.new(445,440, -5175);
elseif ((MyLevel==1050) or (MyLevel<=1099)) then Mon="Winter Warrior";
LevelQuest=2;
NameQuest="SnowMountainQuest";
NameMon="Winter Warrior";
CFrameQuest=CFrame.new(607,401, -5371);
CFrameMon=CFrame.new(1224,460, -5332);
elseif ((MyLevel==1100) or (MyLevel<=1124)) then Mon="Lab Subordinate";
LevelQuest=1;
NameQuest="IceSideQuest";
NameMon="Lab Subordinate";
CFrameQuest=CFrame.new( -6061,16, -4904);
CFrameMon=CFrame.new( -5941,50, -4322);
elseif ((MyLevel==1125) or (MyLevel<=1174)) then Mon="Horned Warrior";
LevelQuest=2;
NameQuest="IceSideQuest";
NameMon="Horned Warrior";
CFrameQuest=CFrame.new( -6061,16, -4904);
CFrameMon=CFrame.new( -6306,50, -5752);
elseif ((MyLevel==1175) or (MyLevel<=1199)) then Mon="Magma Ninja";
LevelQuest=1;
NameQuest="FireSideQuest";
NameMon="Magma Ninja";
CFrameQuest=CFrame.new( -5430,16, -5298);
CFrameMon=CFrame.new( -5233,60, -6227);
elseif ((MyLevel==1200) or (MyLevel<=1249)) then Mon="Lava Pirate";
LevelQuest=2;
NameQuest="FireSideQuest";
NameMon="Lava Pirate";
CFrameQuest=CFrame.new( -5430,16, -5298);
CFrameMon=CFrame.new( -4955,60, -4836);
elseif ((MyLevel==1250) or (MyLevel<=1274)) then Mon="Ship Deckhand";
LevelQuest=1;
NameQuest="ShipQuest1";
NameMon="Ship Deckhand";
CFrameQuest=CFrame.new(1033,125,32909);
CFrameMon=CFrame.new(1033,125,32909);
elseif ((MyLevel==1275) or (MyLevel<=1299)) then Mon="Ship Engineer";
LevelQuest=2;
NameQuest="ShipQuest1";
NameMon="Ship Engineer";
CFrameQuest=CFrame.new(1033,125,32909);
CFrameMon=CFrame.new(809,80,33090);
elseif ((MyLevel==1300) or (MyLevel<=1324)) then Mon="Ship Steward";
LevelQuest=1;
NameQuest="ShipQuest2";
NameMon="Ship Steward";
CFrameQuest=CFrame.new(973,125,33245);
CFrameMon=CFrame.new(838,160,33408);
elseif ((MyLevel==1325) or (MyLevel<=1349)) then Mon="Ship Officer";
LevelQuest=2;
NameQuest="ShipQuest2";
NameMon="Ship Officer";
CFrameQuest=CFrame.new(973,125,33245);
CFrameMon=CFrame.new(1238,220,33148);
elseif ((MyLevel==1350) or (MyLevel<=1374)) then Mon="Arctic Warrior";
LevelQuest=1;
NameQuest="FrostQuest";
NameMon="Arctic Warrior";
CFrameQuest=CFrame.new(5668,28, -6484);
CFrameMon=CFrame.new(5836,80, -6257);
elseif ((MyLevel==1375) or (MyLevel<=1424)) then Mon="Snow Lurker";
LevelQuest=2;
NameQuest="FrostQuest";
NameMon="Snow Lurker";
CFrameQuest=CFrame.new(5668,28, -6484);
CFrameMon=CFrame.new(5700,80, -6724);
elseif ((MyLevel==1425) or (MyLevel<=1449)) then Mon="Sea Soldier";
LevelQuest=1;
NameQuest="ForgottenQuest";
NameMon="Sea Soldier";
CFrameQuest=CFrame.new( -3056,240, -10145);
CFrameMon=CFrame.new( -2583,80, -9821);
elseif (MyLevel>=1450) then Mon="Water Fighter";
LevelQuest=2;
NameQuest="ForgottenQuest";
NameMon="Water Fighter";
CFrameQuest=CFrame.new( -3056,240, -10145);
CFrameMon=CFrame.new( -3339,290, -10412);
end elseif World3 then 
if ((MyLevel==1500) or (MyLevel<=1524)) then Mon="Pirate Millionaire";
LevelQuest=1;
NameQuest="PiratePortQuest";
NameMon="Pirate Millionaire";
CFrameQuest=CFrame.new( -291,44,5580);
CFrameMon=CFrame.new( -44,70,5623);
elseif ((MyLevel==1525) or (MyLevel<=1574)) then Mon="Pistol Billionaire";
LevelQuest=2;
NameQuest="PiratePortQuest";
NameMon="Pistol Billionaire";
CFrameQuest=CFrame.new( -291,44,5580);
CFrameMon=CFrame.new(219,105,6018);
elseif ((MyLevel==1575) or (MyLevel<=1599)) then Mon="Dragon Crew Warrior";
LevelQuest=1;
NameQuest="AmazonQuest";
NameMon="Dragon Crew Warrior";
CFrameQuest=CFrame.new(5834,51, -1103);
CFrameMon=CFrame.new(5992,90, -1581);
elseif ((MyLevel==1600) or (MyLevel<=1624)) then Mon="Dragon Crew Archer";
NameQuest="AmazonQuest";
LevelQuest=2;
NameMon="Dragon Crew Archer";
CFrameQuest=CFrame.new(5834,51, -1103);
CFrameMon=CFrame.new(6472,370, -151);
elseif ((MyLevel==1625) or (MyLevel<=1649)) then Mon="Female Islander";
NameQuest="AmazonQuest2";
LevelQuest=1;
NameMon="Female Islander";
CFrameQuest=CFrame.new(5448,602,748);
CFrameMon=CFrame.new(4836,740,928);
elseif ((MyLevel==1650) or (MyLevel<=1699)) then Mon="Giant Islander";
NameQuest="AmazonQuest2";
LevelQuest=2;
NameMon="Giant Islander";
CFrameQuest=CFrame.new(5448,602,748);
CFrameMon=CFrame.new(4784,660,155);
elseif ((MyLevel==1700) or (MyLevel<=1724)) then Mon="Marine Commodore";
LevelQuest=1;
NameQuest="MarineTreeIsland";
NameMon="Marine Commodore";
CFrameQuest=CFrame.new(2180,29, -6738);
CFrameMon=CFrame.new(3156,120, -7837);
elseif ((MyLevel==1725) or (MyLevel<=1774)) then Mon="Marine Rear Admiral";
NameMon="Marine Rear Admiral";
NameQuest="MarineTreeIsland";
LevelQuest=2;
CFrameQuest=CFrame.new(2180,29, -6738);
CFrameMon=CFrame.new(3205,120, -6742);
elseif ((MyLevel==1775) or (MyLevel<=1799)) then Mon="Fishman Raider";
LevelQuest=1;
NameQuest="DeepForestIsland3";
NameMon="Fishman Raider";
CFrameQuest=CFrame.new( -10581,332, -8758);
CFrameMon=CFrame.new( -10550,380, -8574);
elseif ((MyLevel==1800) or (MyLevel<=1824)) then Mon="Fishman Captain";
LevelQuest=2;
NameQuest="DeepForestIsland3";
NameMon="Fishman Captain";
CFrameQuest=CFrame.new( -10581,332, -8758);
CFrameMon=CFrame.new( -10764,380, -8799);
elseif ((MyLevel==1825) or (MyLevel<=1849)) then Mon="Forest Pirate";
LevelQuest=1;
NameQuest="DeepForestIsland";
NameMon="Forest Pirate";
CFrameQuest=CFrame.new( -13233,332, -7626);
CFrameMon=CFrame.new( -13335,380, -7660);
elseif ((MyLevel==1850) or (MyLevel<=1899)) then Mon="Mythological Pirate";
LevelQuest=2;
NameQuest="DeepForestIsland";
NameMon="Mythological Pirate";
CFrameQuest=CFrame.new( -13233,332, -7626);
CFrameMon=CFrame.new( -13844,520, -7016);
elseif ((MyLevel==1900) or (MyLevel<=1924)) then Mon="Jungle Pirate";
LevelQuest=1;
NameQuest="DeepForestIsland2";
NameMon="Jungle Pirate";
CFrameQuest=CFrame.new( -12682,391, -9901);
CFrameMon=CFrame.new( -12166,380, -10375);
elseif ((MyLevel==1925) or (MyLevel<=1974)) then Mon="Musketeer Pirate";
LevelQuest=2;
NameQuest="DeepForestIsland2";
NameMon="Musketeer Pirate";
CFrameQuest=CFrame.new( -12682,391, -9901);
CFrameMon=CFrame.new( -13098,450, -9831);
elseif ((MyLevel==1975) or (MyLevel<=1999)) then Mon="Reborn Skeleton";
LevelQuest=1;
NameQuest="HauntedQuest1";
NameMon="Reborn Skeleton";
CFrameQuest=CFrame.new( -9481,142,5565);
CFrameMon=CFrame.new( -8680,190,5852);
elseif ((MyLevel==2000) or (MyLevel<=2024)) then Mon="Living Zombie";
LevelQuest=2;
NameQuest="HauntedQuest1";
NameMon="Living Zombie";
CFrameQuest=CFrame.new( -9481,142,5565);
CFrameMon=CFrame.new( -10144,140,5932);
elseif ((MyLevel==2025) or (MyLevel<=2049)) then Mon="Demonic Soul";
LevelQuest=1;
NameQuest="HauntedQuest2";
NameMon="Demonic Soul";
CFrameQuest=CFrame.new( -9515,172,607);
CFrameMon=CFrame.new( -9275,210,6166);
elseif ((MyLevel==2050) or (MyLevel<=2074)) then Mon="Posessed Mummy";
LevelQuest=2;
NameQuest="HauntedQuest2";
NameMon="Posessed Mummy";
CFrameQuest=CFrame.new( -9515,172,607);
CFrameMon=CFrame.new( -9442,60,6304);
elseif ((MyLevel==2075) or (MyLevel<=2099)) then Mon="Peanut Scout";
LevelQuest=1;
NameQuest="NutsIslandQuest";
NameMon="Peanut Scout";
CFrameQuest=CFrame.new( -2104,38, -10194);
CFrameMon=CFrame.new( -1870,100, -10225);
elseif ((MyLevel==2100) or (MyLevel<=2124)) then Mon="Peanut President";
LevelQuest=2;
NameQuest="NutsIslandQuest";
NameMon="Peanut President";
CFrameQuest=CFrame.new( -2104,38, -10194);
CFrameMon=CFrame.new( -2005,100, -10585);
elseif ((MyLevel==2125) or (MyLevel<=2149)) then Mon="Ice Cream Chef";
LevelQuest=1;
NameQuest="IceCreamIslandQuest";
NameMon="Ice Cream Chef";
CFrameQuest=CFrame.new( -818,66, -10964);
CFrameMon=CFrame.new( -501,100, -10883);
elseif ((MyLevel==2150) or (MyLevel<=2199)) then Mon="Ice Cream Commander";
LevelQuest=2;
NameQuest="IceCreamIslandQuest";
NameMon="Ice Cream Commander";
CFrameQuest=CFrame.new( -818,66, -10964);
CFrameMon=CFrame.new( -690,100, -11350);
elseif ((MyLevel==2200) or (MyLevel<=2224)) then Mon="Cookie Crafter";
LevelQuest=1;
NameQuest="CakeQuest1";
NameMon="Cookie Crafter";
CFrameQuest=CFrame.new( -2023,38, -12028);
CFrameMon=CFrame.new( -2332,90, -12049);
elseif ((MyLevel==2225) or (MyLevel<=2249)) then Mon="Cake Guard";
LevelQuest=2;
NameQuest="CakeQuest1";
NameMon="Cake Guard";
CFrameQuest=CFrame.new( -2023,38, -12028);
CFrameMon=CFrame.new( -1514,90, -12422);
elseif ((MyLevel==2250) or (MyLevel<=2274)) then Mon="Baking Staff";
LevelQuest=1;
NameQuest="CakeQuest2";
NameMon="Baking Staff";
CFrameQuest=CFrame.new( -1931,38, -12840);
CFrameMon=CFrame.new( -1930,90, -12963);
elseif ((MyLevel==2275) or (MyLevel<=2299)) then Mon="Head Baker";
LevelQuest=2;
NameQuest="CakeQuest2";
NameMon="Head Baker";
CFrameQuest=CFrame.new( -1931,38, -12840);
CFrameMon=CFrame.new( -2123,110, -12777);
elseif ((MyLevel==2300) or (MyLevel<=2324)) then Mon="Cocoa Warrior";
LevelQuest=1;
NameQuest="ChocQuest1";
NameMon="Cocoa Warrior";
CFrameQuest=CFrame.new(235,25, -12199);
CFrameMon=CFrame.new(110,80, -12245);
elseif ((MyLevel==2325) or (MyLevel<=2349)) then Mon="Chocolate Bar Battler";
LevelQuest=2;
NameQuest="ChocQuest1";
NameMon="Chocolate Bar Battler";
CFrameQuest=CFrame.new(235,25, -12199);
CFrameMon=CFrame.new(579,80, -12413);
elseif ((MyLevel==2350) or (MyLevel<=2374)) then Mon="Sweet Thief";
LevelQuest=1;
NameQuest="ChocQuest2";
NameMon="Sweet Thief";
CFrameQuest=CFrame.new(150,25, -12777);
CFrameMon=CFrame.new( -68,80, -12692);
elseif ((MyLevel==2375) or (MyLevel<=2399)) then Mon="Candy Rebel";
LevelQuest=2;
NameQuest="ChocQuest2";
NameMon="Candy Rebel";
CFrameQuest=CFrame.new(150,25, -12777);
CFrameMon=CFrame.new(17,80, -12962);
elseif ((MyLevel==2400) or (MyLevel<=2424)) then Mon="Candy Pirate";
LevelQuest=1;
NameQuest="CandyQuest1";
NameMon="Candy Pirate";
CFrameQuest=CFrame.new( -1148,14, -14446);
CFrameMon=CFrame.new( -1371,70, -14405);
elseif ((MyLevel==2425) or (MyLevel<=2449)) then Mon="Snow Demon";
LevelQuest=2;
NameQuest="CandyQuest1";
NameMon="Snow Demon";
CFrameQuest=CFrame.new( -1148,14, -14446);
CFrameMon=CFrame.new( -836,70, -14326);
elseif ((MyLevel==2450) or (MyLevel<=2474)) then Mon="Isle Outlaw";
LevelQuest=1;
NameQuest="TikiQuest1";
NameMon="Isle Outlaw";
CFrameQuest=CFrame.new( -16547,56, -172);
CFrameMon=CFrame.new( -16431,90, -223);
elseif ((MyLevel==2475) or (MyLevel<=2499)) then Mon="Island Boy";
LevelQuest=2;
NameQuest="TikiQuest1";
NameMon="Island Boy";
CFrameQuest=CFrame.new( -16547,56, -172);
CFrameMon=CFrame.new( -16668,70, -243);
elseif ((MyLevel==2500) or (MyLevel<=2524)) then Mon="Sun-kissed Warrior";
LevelQuest=1;
NameQuest="TikiQuest2";
NameMon="kissed";
CFrameQuest=CFrame.new( -16540,56,1051);
CFrameMon=CFrame.new( -16345,80,1004);
elseif ((MyLevel==2525) or (MyLevel<=2549)) then Mon="Isle Champion";
LevelQuest=2;
NameQuest="TikiQuest2";
NameMon="Isle Champion";
CFrameQuest=CFrame.new( -16540,56,1051);
CFrameMon=CFrame.new( -16634,85,1106);
elseif ((MyLevel==2550) or (MyLevel<=2574)) then Mon="Serpent Hunter";
LevelQuest=1;
NameQuest="TikiQuest3";
NameMon="Serpent Hunter";
CFrameQuest=CFrame.new( -16665,105,1580);
CFrameMon=CFrame.new( -16542.4824,146.675156,1529.61401, -0.999948919,1.0729811e-8,0.0101067368,1.0128324e-8,1, -5.9564663e-8, -0.0101067368, -5.9459257e-8, -0.999948919);
elseif ((MyLevel==2575) or (MyLevel<=2600)) then Mon="Skull Slayer";
LevelQuest=2;
NameQuest="TikiQuest3";
NameMon="Skull Slayer";
CFrameQuest=CFrame.new( -16665,105,1580);
CFrameMon=CFrame.new( -16849.9336,147.005066,1640.88354,0.470148534,0.491874039, -0.732816696,1.72165e-8,0.83030504,0.55730921,0.882587314, -0.262018114,0.390366673);
end 
end 
end 
function Hop() 
local v348=game.PlaceId;
local v349={};
local v350="";
local v351=os.date("!*t").hour;
local v352=false;
function TPReturner() 
local v778;
if (v350=="") then v778=game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v348   .. "/servers/Public?sortOrder=Asc&limit=100" ));
else v778=game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v348   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v350 ));
end 
local v779="";
if (v778.nextPageCursor and (v778.nextPageCursor~="null") and (v778.nextPageCursor~=nil)) then v350=v778.nextPageCursor;
end 
local v780=0;
for v1739,v1740 in pairs(v778.data) 
do 
local v1741=true;
v779=tostring(v1740.id);
if (tonumber(v1740.maxPlayers)>tonumber(v1740.playing)) then 
for v2086,v2087 in pairs(v349) 
do 
if (v780~=0) then 
if (v779==tostring(v2087)) then v1741=false;
end elseif (tonumber(v351)~=tonumber(v2087)) then 
local v2619=pcall(
function() v349={};
table.insert(v349,v351);
end);
end v780=v780 + 1 ;
end 
if (v1741==true) then table.insert(v349,v779);
wait();
pcall(
function() wait();
game:GetService("TeleportService"):TeleportToPlaceInstance(v348,v779,game.Players.LocalPlayer);
end);
wait(4);
end 
end 
end 
end 
function Teleport() 
while wait() 
do pcall(
function() TPReturner();
if (v350~="") then TPReturner();
end 
end);
end 
end Teleport();
end 
function UpdateIslandESP() 
for v781,v782 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) 
do pcall(
function() 
if IslandESP then 
if (v782.Name~="Sea") then 
if  not v782:FindFirstChild("NameEsp") then 
local v2404=Instance.new("BillboardGui",v782);
v2404.Name="NameEsp";
v2404.ExtentsOffset=Vector3.new(0,1,0);
v2404.Size=UDim2.new(1,200,1,30);
v2404.Adornee=v782;
v2404.AlwaysOnTop=true;
local v2410=Instance.new("TextLabel",v2404);
v2410.Font="GothamBold";
v2410.FontSize="Size14";
v2410.TextWrapped=true;
v2410.Size=UDim2.new(1,0,1,0);
v2410.TextYAlignment="Top";
v2410.BackgroundTransparency=1;
v2410.TextStrokeTransparency=0.5;
v2410.TextColor3=Color3.fromRGB(255,255,255);
else v782['NameEsp'].TextLabel.Text=v782.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position-v782.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v782:FindFirstChild("NameEsp") then v782:FindFirstChild("NameEsp"):Destroy();
end 
end);
end 
end 
function isnil(v353) 
return v353==nil ;
end 
local 
function v45(v354) 
return math.floor(tonumber(v354) + 0.5 );
end Number=math.random(1,1000000);
function UpdatePlayerChams() 
for v783,v784 in pairs(game:GetService("Players"):GetChildren()) 
do pcall(
function() 
if  not isnil(v784.Character) then 
if ESPPlayer then 
if ( not isnil(v784.Character.Head) and  not v784.Character.Head:FindFirstChild("NameEsp"   .. Number )) then 
local v2420=Instance.new("BillboardGui",v784.Character.Head);
v2420.Name="NameEsp"   .. Number ;
v2420.ExtentsOffset=Vector3.new(0,1,0);
v2420.Size=UDim2.new(1,200,1,30);
v2420.Adornee=v784.Character.Head;
v2420.AlwaysOnTop=true;
local v2427=Instance.new("TextLabel",v2420);
v2427.Font=Enum.Font.GothamSemibold;
v2427.FontSize="Size14";
v2427.TextWrapped=true;
v2427.Text=v784.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v784.Character.Head.Position).Magnitude/3 )   .. " Distance" ;
v2427.Size=UDim2.new(1,0,1,0);
v2427.TextYAlignment="Top";
v2427.BackgroundTransparency=1;
v2427.TextStrokeTransparency=0.5;
if (v784.Team==game.Players.LocalPlayer.Team) then v2427.TextColor3=Color3.new(3,252,3);
else v2427.TextColor3=Color3.new(3,252,3);
end else v784.Character.Head["NameEsp"   .. Number ].TextLabel.Text=v784.Name   .. " | "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v784.Character.Head.Position).Magnitude/3 )   .. " Distance\nHealth: "   .. v45((v784.Character.Humanoid.Health * 100)/v784.Character.Humanoid.MaxHealth )   .. "%" ;
end elseif v784.Character.Head:FindFirstChild("NameEsp"   .. Number ) then v784.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateChestChams() 
for v785,v786 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if string.find(v786.Name,"Chest") then 
if ChestESP then 
if string.find(v786.Name,"Chest") then 
if  not v786:FindFirstChild("NameEsp"   .. Number ) then 
local v2753=Instance.new("BillboardGui",v786);
v2753.Name="NameEsp"   .. Number ;
v2753.ExtentsOffset=Vector3.new(0,1,0);
v2753.Size=UDim2.new(1,200,1,30);
v2753.Adornee=v786;
v2753.AlwaysOnTop=true;
local v2759=Instance.new("TextLabel",v2753);
v2759.Font=Enum.Font.GothamSemibold;
v2759.FontSize="Size14";
v2759.TextWrapped=true;
v2759.Size=UDim2.new(1,0,1,0);
v2759.TextYAlignment="Top";
v2759.BackgroundTransparency=1;
v2759.TextStrokeTransparency=0.5;
if (v786.Name=="Chest1") then v2759.TextColor3=Color3.fromRGB(109,109,109);
v2759.Text="Chest 1"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v786.Position).Magnitude/3 )   .. " Distance" ;
end 
if (v786.Name=="Chest2") then v2759.TextColor3=Color3.fromRGB(173,158,21);
v2759.Text="Chest 2"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v786.Position).Magnitude/3 )   .. " Distance" ;
end 
if (v786.Name=="Chest3") then v2759.TextColor3=Color3.fromRGB(85,255,255);
v2759.Text="Chest 3"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v786.Position).Magnitude/3 )   .. " Distance" ;
end else v786["NameEsp"   .. Number ].TextLabel.Text=v786.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v786.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v786:FindFirstChild("NameEsp"   .. Number ) then v786:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateDevilChams() 
for v787,v788 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if DevilFruitESP then 
if string.find(v788.Name,"Fruit") then 
if  not v788.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2438=Instance.new("BillboardGui",v788.Handle);
v2438.Name="NameEsp"   .. Number ;
v2438.ExtentsOffset=Vector3.new(0,1,0);
v2438.Size=UDim2.new(1,200,1,30);
v2438.Adornee=v788.Handle;
v2438.AlwaysOnTop=true;
local v2445=Instance.new("TextLabel",v2438);
v2445.Font=Enum.Font.GothamSemibold;
v2445.FontSize="Size14";
v2445.TextWrapped=true;
v2445.Size=UDim2.new(1,0,1,0);
v2445.TextYAlignment="Top";
v2445.BackgroundTransparency=1;
v2445.TextStrokeTransparency=0.5;
v2445.TextColor3=Color3.fromRGB(255,255,255);
v2445.Text=v788.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v788.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v788.Handle["NameEsp"   .. Number ].TextLabel.Text=v788.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v788.Handle.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v788.Handle:FindFirstChild("NameEsp"   .. Number ) then v788.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end);
end 
end 
function UpdateFlowerChams() 
for v789,v790 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if ((v790.Name=="Flower2") or (v790.Name=="Flower1")) then 
if FlowerESP then 
if  not v790:FindFirstChild("NameEsp"   .. Number ) then 
local v2457=Instance.new("BillboardGui",v790);
v2457.Name="NameEsp"   .. Number ;
v2457.ExtentsOffset=Vector3.new(0,1,0);
v2457.Size=UDim2.new(1,200,1,30);
v2457.Adornee=v790;
v2457.AlwaysOnTop=true;
local v2463=Instance.new("TextLabel",v2457);
v2463.Font=Enum.Font.GothamSemibold;
v2463.FontSize="Size14";
v2463.TextWrapped=true;
v2463.Size=UDim2.new(1,0,1,0);
v2463.TextYAlignment="Top";
v2463.BackgroundTransparency=1;
v2463.TextStrokeTransparency=0.5;
v2463.TextColor3=Color3.fromRGB(255,0,0);
if (v790.Name=="Flower1") then v2463.Text="Blue Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v790.Position).Magnitude/3 )   .. " Distance" ;
v2463.TextColor3=Color3.fromRGB(0,0,255);
end 
if (v790.Name=="Flower2") then v2463.Text="Red Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v790.Position).Magnitude/3 )   .. " Distance" ;
v2463.TextColor3=Color3.fromRGB(255,0,0);
end else v790["NameEsp"   .. Number ].TextLabel.Text=v790.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v790.Position).Magnitude/3 )   .. " Distance" ;
end elseif v790:FindFirstChild("NameEsp"   .. Number ) then v790:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateRealFruitChams() 
for v791,v792 in pairs(game.Workspace.AppleSpawner:GetChildren()) 
do 
if v792:IsA("Tool") then 
if RealFruitESP then 
if  not v792.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2207=Instance.new("BillboardGui",v792.Handle);
v2207.Name="NameEsp"   .. Number ;
v2207.ExtentsOffset=Vector3.new(0,1,0);
v2207.Size=UDim2.new(1,200,1,30);
v2207.Adornee=v792.Handle;
v2207.AlwaysOnTop=true;
local v2214=Instance.new("TextLabel",v2207);
v2214.Font=Enum.Font.GothamSemibold;
v2214.FontSize="Size14";
v2214.TextWrapped=true;
v2214.Size=UDim2.new(1,0,1,0);
v2214.TextYAlignment="Top";
v2214.BackgroundTransparency=1;
v2214.TextStrokeTransparency=0.5;
v2214.TextColor3=Color3.fromRGB(255,0,0);
v2214.Text=v792.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v792.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v792.Handle["NameEsp"   .. Number ].TextLabel.Text=v792.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v792.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v792.Handle:FindFirstChild("NameEsp"   .. Number ) then v792.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
for v793,v794 in pairs(game.Workspace.PineappleSpawner:GetChildren()) 
do 
if v794:IsA("Tool") then 
if RealFruitESP then 
if  not v794.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2226=Instance.new("BillboardGui",v794.Handle);
v2226.Name="NameEsp"   .. Number ;
v2226.ExtentsOffset=Vector3.new(0,1,0);
v2226.Size=UDim2.new(1,200,1,30);
v2226.Adornee=v794.Handle;
v2226.AlwaysOnTop=true;
local v2233=Instance.new("TextLabel",v2226);
v2233.Font=Enum.Font.GothamSemibold;
v2233.FontSize="Size14";
v2233.TextWrapped=true;
v2233.Size=UDim2.new(1,0,1,0);
v2233.TextYAlignment="Top";
v2233.BackgroundTransparency=1;
v2233.TextStrokeTransparency=0.5;
v2233.TextColor3=Color3.fromRGB(255,174,0);
v2233.Text=v794.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v794.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v794.Handle["NameEsp"   .. Number ].TextLabel.Text=v794.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v794.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v794.Handle:FindFirstChild("NameEsp"   .. Number ) then v794.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
for v795,v796 in pairs(game.Workspace.BananaSpawner:GetChildren()) 
do 
if v796:IsA("Tool") then 
if RealFruitESP then 
if  not v796.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2245=Instance.new("BillboardGui",v796.Handle);
v2245.Name="NameEsp"   .. Number ;
v2245.ExtentsOffset=Vector3.new(0,1,0);
v2245.Size=UDim2.new(1,200,1,30);
v2245.Adornee=v796.Handle;
v2245.AlwaysOnTop=true;
local v2252=Instance.new("TextLabel",v2245);
v2252.Font=Enum.Font.GothamSemibold;
v2252.FontSize="Size14";
v2252.TextWrapped=true;
v2252.Size=UDim2.new(1,0,1,0);
v2252.TextYAlignment="Top";
v2252.BackgroundTransparency=1;
v2252.TextStrokeTransparency=0.5;
v2252.TextColor3=Color3.fromRGB(251,255,0);
v2252.Text=v796.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v796.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v796.Handle["NameEsp"   .. Number ].TextLabel.Text=v796.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v796.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v796.Handle:FindFirstChild("NameEsp"   .. Number ) then v796.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
end 
function UpdateIslandESP() 
for v797,v798 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) 
do pcall(
function() 
if IslandESP then 
if (v798.Name~="Sea") then 
if  not v798:FindFirstChild("NameEsp") then 
local v2474=Instance.new("BillboardGui",v798);
v2474.Name="NameEsp";
v2474.ExtentsOffset=Vector3.new(0,1,0);
v2474.Size=UDim2.new(1,200,1,30);
v2474.Adornee=v798;
v2474.AlwaysOnTop=true;
local v2480=Instance.new("TextLabel",v2474);
v2480.Font="GothamBold";
v2480.FontSize="Size14";
v2480.TextWrapped=true;
v2480.Size=UDim2.new(1,0,1,0);
v2480.TextYAlignment="Top";
v2480.BackgroundTransparency=1;
v2480.TextStrokeTransparency=0.5;
v2480.TextColor3=Color3.fromRGB(255,255,255);
else v798['NameEsp'].TextLabel.Text=v798.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v798.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v798:FindFirstChild("NameEsp") then v798:FindFirstChild("NameEsp"):Destroy();
end 
end);
end 
end 
function isnil(v355) 
return v355==nil ;
end 
local 
function v45(v356) 
return math.floor(tonumber(v356) + 0.5 );
end Number=math.random(1,1000000);
function UpdatePlayerChams() 
for v799,v800 in pairs(game:GetService("Players"):GetChildren()) 
do pcall(
function() 
if  not isnil(v800.Character) then 
if ESPPlayer then 
if ( not isnil(v800.Character.Head) and  not v800.Character.Head:FindFirstChild("NameEsp"   .. Number )) then 
local v2490=Instance.new("BillboardGui",v800.Character.Head);
v2490.Name="NameEsp"   .. Number ;
v2490.ExtentsOffset=Vector3.new(0,1,0);
v2490.Size=UDim2.new(1,200,1,30);
v2490.Adornee=v800.Character.Head;
v2490.AlwaysOnTop=true;
local v2497=Instance.new("TextLabel",v2490);
v2497.Font=Enum.Font.GothamSemibold;
v2497.FontSize="Size14";
v2497.TextWrapped=true;
v2497.Text=v800.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v800.Character.Head.Position).Magnitude/3 )   .. " Distance" ;
v2497.Size=UDim2.new(1,0,1,0);
v2497.TextYAlignment="Top";
v2497.BackgroundTransparency=1;
v2497.TextStrokeTransparency=0.5;
if (v800.Team==game.Players.LocalPlayer.Team) then v2497.TextColor3=Color3.new(3,252,3);
else v2497.TextColor3=Color3.new(3,252,3);
end else v800.Character.Head["NameEsp"   .. Number ].TextLabel.Text=v800.Name   .. " | "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v800.Character.Head.Position).Magnitude/3 )   .. " Distance\nHealth: "   .. v45((v800.Character.Humanoid.Health * 100)/v800.Character.Humanoid.MaxHealth )   .. "%" ;
end elseif v800.Character.Head:FindFirstChild("NameEsp"   .. Number ) then v800.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateChestChams() 
for v801,v802 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if string.find(v802.Name,"Chest") then 
if ChestESP then 
if string.find(v802.Name,"Chest") then 
if  not v802:FindFirstChild("NameEsp"   .. Number ) then 
local v2775=Instance.new("BillboardGui",v802);
v2775.Name="NameEsp"   .. Number ;
v2775.ExtentsOffset=Vector3.new(0,1,0);
v2775.Size=UDim2.new(1,200,1,30);
v2775.Adornee=v802;
v2775.AlwaysOnTop=true;
local v2781=Instance.new("TextLabel",v2775);
v2781.Font=Enum.Font.GothamSemibold;
v2781.FontSize="Size14";
v2781.TextWrapped=true;
v2781.Size=UDim2.new(1,0,1,0);
v2781.TextYAlignment="Top";
v2781.BackgroundTransparency=1;
v2781.TextStrokeTransparency=0.5;
if (v802.Name=="Chest1") then v2781.TextColor3=Color3.fromRGB(109,109,109);
v2781.Text="Chest 1"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v802.Position).Magnitude/3 )   .. " Distance" ;
end 
if (v802.Name=="Chest2") then v2781.TextColor3=Color3.fromRGB(173,158,21);
v2781.Text="Chest 2"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v802.Position).Magnitude/3 )   .. " Distance" ;
end 
if (v802.Name=="Chest3") then v2781.TextColor3=Color3.fromRGB(85,255,255);
v2781.Text="Chest 3"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v802.Position).Magnitude/3 )   .. " Distance" ;
end else v802["NameEsp"   .. Number ].TextLabel.Text=v802.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v802.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v802:FindFirstChild("NameEsp"   .. Number ) then v802:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateDevilChams() 
for v803,v804 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if DevilFruitESP then 
if string.find(v804.Name,"Fruit") then 
if  not v804.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2508=Instance.new("BillboardGui",v804.Handle);
v2508.Name="NameEsp"   .. Number ;
v2508.ExtentsOffset=Vector3.new(0,1,0);
v2508.Size=UDim2.new(1,200,1,30);
v2508.Adornee=v804.Handle;
v2508.AlwaysOnTop=true;
local v2515=Instance.new("TextLabel",v2508);
v2515.Font=Enum.Font.GothamSemibold;
v2515.FontSize="Size14";
v2515.TextWrapped=true;
v2515.Size=UDim2.new(1,0,1,0);
v2515.TextYAlignment="Top";
v2515.BackgroundTransparency=1;
v2515.TextStrokeTransparency=0.5;
v2515.TextColor3=Color3.fromRGB(255,255,255);
v2515.Text=v804.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v804.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v804.Handle["NameEsp"   .. Number ].TextLabel.Text=v804.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v804.Handle.Position).Magnitude/3 )   .. " Distance" ;
end 
end elseif v804.Handle:FindFirstChild("NameEsp"   .. Number ) then v804.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end);
end 
end 
function UpdateFlowerChams() 
for v805,v806 in pairs(game.Workspace:GetChildren()) 
do pcall(
function() 
if ((v806.Name=="Flower2") or (v806.Name=="Flower1")) then 
if FlowerESP then 
if  not v806:FindFirstChild("NameEsp"   .. Number ) then 
local v2527=Instance.new("BillboardGui",v806);
v2527.Name="NameEsp"   .. Number ;
v2527.ExtentsOffset=Vector3.new(0,1,0);
v2527.Size=UDim2.new(1,200,1,30);
v2527.Adornee=v806;
v2527.AlwaysOnTop=true;
local v2533=Instance.new("TextLabel",v2527);
v2533.Font=Enum.Font.GothamSemibold;
v2533.FontSize="Size14";
v2533.TextWrapped=true;
v2533.Size=UDim2.new(1,0,1,0);
v2533.TextYAlignment="Top";
v2533.BackgroundTransparency=1;
v2533.TextStrokeTransparency=0.5;
v2533.TextColor3=Color3.fromRGB(255,0,0);
if (v806.Name=="Flower1") then v2533.Text="Blue Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v806.Position).Magnitude/3 )   .. " Distance" ;
v2533.TextColor3=Color3.fromRGB(0,0,255);
end 
if (v806.Name=="Flower2") then v2533.Text="Red Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v806.Position).Magnitude/3 )   .. " Distance" ;
v2533.TextColor3=Color3.fromRGB(255,0,0);
end else v806["NameEsp"   .. Number ].TextLabel.Text=v806.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v806.Position).Magnitude/3 )   .. " Distance" ;
end elseif v806:FindFirstChild("NameEsp"   .. Number ) then v806:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end);
end 
end 
function UpdateRealFruitChams() 
for v807,v808 in pairs(game.Workspace.AppleSpawner:GetChildren()) 
do 
if v808:IsA("Tool") then 
if RealFruitESP then 
if  not v808.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2264=Instance.new("BillboardGui",v808.Handle);
v2264.Name="NameEsp"   .. Number ;
v2264.ExtentsOffset=Vector3.new(0,1,0);
v2264.Size=UDim2.new(1,200,1,30);
v2264.Adornee=v808.Handle;
v2264.AlwaysOnTop=true;
local v2271=Instance.new("TextLabel",v2264);
v2271.Font=Enum.Font.GothamSemibold;
v2271.FontSize="Size14";
v2271.TextWrapped=true;
v2271.Size=UDim2.new(1,0,1,0);
v2271.TextYAlignment="Top";
v2271.BackgroundTransparency=1;
v2271.TextStrokeTransparency=0.5;
v2271.TextColor3=Color3.fromRGB(255,0,0);
v2271.Text=v808.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v808.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v808.Handle["NameEsp"   .. Number ].TextLabel.Text=v808.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v808.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v808.Handle:FindFirstChild("NameEsp"   .. Number ) then v808.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
for v809,v810 in pairs(game.Workspace.PineappleSpawner:GetChildren()) 
do 
if v810:IsA("Tool") then 
if RealFruitESP then 
if  not v810.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2283=Instance.new("BillboardGui",v810.Handle);
v2283.Name="NameEsp"   .. Number ;
v2283.ExtentsOffset=Vector3.new(0,1,0);
v2283.Size=UDim2.new(1,200,1,30);
v2283.Adornee=v810.Handle;
v2283.AlwaysOnTop=true;
local v2290=Instance.new("TextLabel",v2283);
v2290.Font=Enum.Font.GothamSemibold;
v2290.FontSize="Size14";
v2290.TextWrapped=true;
v2290.Size=UDim2.new(1,0,1,0);
v2290.TextYAlignment="Top";
v2290.BackgroundTransparency=1;
v2290.TextStrokeTransparency=0.5;
v2290.TextColor3=Color3.fromRGB(255,174,0);
v2290.Text=v810.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v810.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v810.Handle["NameEsp"   .. Number ].TextLabel.Text=v810.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v810.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v810.Handle:FindFirstChild("NameEsp"   .. Number ) then v810.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
for v811,v812 in pairs(game.Workspace.BananaSpawner:GetChildren()) 
do 
if v812:IsA("Tool") then 
if RealFruitESP then 
if  not v812.Handle:FindFirstChild("NameEsp"   .. Number ) then 
local v2302=Instance.new("BillboardGui",v812.Handle);
v2302.Name="NameEsp"   .. Number ;
v2302.ExtentsOffset=Vector3.new(0,1,0);
v2302.Size=UDim2.new(1,200,1,30);
v2302.Adornee=v812.Handle;
v2302.AlwaysOnTop=true;
local v2309=Instance.new("TextLabel",v2302);
v2309.Font=Enum.Font.GothamSemibold;
v2309.FontSize="Size14";
v2309.TextWrapped=true;
v2309.Size=UDim2.new(1,0,1,0);
v2309.TextYAlignment="Top";
v2309.BackgroundTransparency=1;
v2309.TextStrokeTransparency=0.5;
v2309.TextColor3=Color3.fromRGB(251,255,0);
v2309.Text=v812.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v812.Handle.Position).Magnitude/3 )   .. " Distance" ;
else v812.Handle["NameEsp"   .. Number ].TextLabel.Text=v812.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v812.Handle.Position).Magnitude/3 )   .. " Distance" ;
end elseif v812.Handle:FindFirstChild("NameEsp"   .. Number ) then v812.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
end 
end 
end 
end 
function UpdateIslandMirageESP() 
for v813,v814 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) 
do pcall(
function() 
if MirageIslandESP then 
if (v814.Name=="Mirage Island") then 
if  not v814:FindFirstChild("NameEsp") then 
local v2544=Instance.new("BillboardGui",v814);
v2544.Name="NameEsp";
v2544.ExtentsOffset=Vector3.new(0,1,0);
v2544.Size=UDim2.new(1,200,1,30);
v2544.Adornee=v814;
v2544.AlwaysOnTop=true;
local v2550=Instance.new("TextLabel",v2544);
v2550.Font="Code";
v2550.FontSize="Size14";
v2550.TextWrapped=true;
v2550.Size=UDim2.new(1,0,1,0);
v2550.TextYAlignment="Top";
v2550.BackgroundTransparency=1;
v2550.TextStrokeTransparency=0.5;
v2550.TextColor3=Color3.fromRGB(255,255,255);
else v814['NameEsp'].TextLabel.Text=v814.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v814.Position).Magnitude/3 )   .. " M" ;
end 
end elseif v814:FindFirstChild("NameEsp") then v814:FindFirstChild("NameEsp"):Destroy();
end 
end);
end 
end 
function UpdateLSDESP() 
for v815,v816 in pairs(game:GetService("Workspace").NPCs:GetChildren()) 
do pcall(
function() 
if LADESP then 
if (v816.Name=="Legendary Sword Dealer") then 
if  not v816:FindFirstChild("NameEsp") then 
local v2560=Instance.new("BillboardGui",v816);
v2560.Name="NameEsp";
v2560.ExtentsOffset=Vector3.new(0,1,0);
v2560.Size=UDim2.new(1,200,1,30);
v2560.Adornee=v816;
v2560.AlwaysOnTop=true;
local v2566=Instance.new("TextLabel",v2560);
v2566.Font="Code";
v2566.FontSize="Size14";
v2566.TextWrapped=true;
v2566.Size=UDim2.new(1,0,1,0);
v2566.TextYAlignment="Top";
v2566.BackgroundTransparency=1;
v2566.TextStrokeTransparency=0.5;
v2566.TextColor3=Color3.fromRGB(255,255,255);
else v816['NameEsp'].TextLabel.Text=v816.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position-v816.Position).Magnitude/3 )   .. " M" ;
end 
end elseif v816:FindFirstChild("NameEsp") then v816:FindFirstChild("NameEsp"):Destroy();
end 
end);
end 
end 
function InfAb() 
if InfAbility then 
if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then 
local v1977=Instance.new("ParticleEmitter");
v1977.Acceleration=Vector3.new(0,0,0);
v1977.Archivable=true;
v1977.Drag=20;
v1977.EmissionDirection=Enum.NormalId.Top;
v1977.Enabled=true;
v1977.Lifetime=NumberRange.new(0,0);
v1977.LightInfluence=0;
v1977.LockedToPart=true;
v1977.Name="Agility";
v1977.Rate=500;
local v1989={NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,4)};
v1977.Size=NumberSequence.new(v1989);
v1977.RotSpeed=NumberRange.new(9999,99999);
v1977.Rotation=NumberRange.new(0,0);
v1977.Speed=NumberRange.new(30,30);
v1977.SpreadAngle=Vector2.new(0,0,0,0);
v1977.Texture="";
v1977.VelocityInheritance=0;
v1977.ZOffset=2;
v1977.Transparency=NumberSequence.new(0);
v1977.Color=ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0));
v1977.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
end elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
end 
end 
local v46=game:GetService("Players").LocalPlayer;
local v47=v46.Character.Energy.Value;
function infinitestam() v46.Character.Energy.Changed:connect(
function() 
if InfiniteEnergy then v46.Character.Energy.Value=v47;
end 
end);
end 
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if InfiniteEnergy then wait(0.1);
v47=v46.Character.Energy.Value;
infinitestam();
end 
end 
end);
end);
function NoDodgeCool() 
if nododgecool then 
for v1890,v1891 in next,getgc() 
do 
if game:GetService("Players").LocalPlayer.Character.Dodge then 
if ((typeof(v1891)=="
function") and (getfenv(v1891).script==game:GetService("Players").LocalPlayer.Character.Dodge)) then 
for v2576,v2577 in next,getupvalues(v1891) 
do 
if (tostring(v2577)=="0.1") then 
repeat wait(0.1);
setupvalue(v1891,v2576,0);
until  not nododgecool 
end 
end 
end 
end 
end 
end 
end 
function fly() 
local v357=game:GetService("Players").LocalPlayer:GetMouse("");
localplayer=game:GetService("Players").LocalPlayer;
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
local v359=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
local v360=25;
local v361={a=false,d=false,w=false,s=false};
local v362;
local v363;
local 
function v364() 
local v817=Instance.new("BodyPosition",v359);
local v818=Instance.new("BodyGyro",v359);
v817.Name="EPIXPOS";
v817.maxForce=Vector3.new(math.huge,math.huge,math.huge);
v817.position=v359.Position;
v818.maxTorque=Vector3.new(8999999488,8999999488,8999999488);
v818.CFrame=v359.CFrame;
repeat wait();
localplayer.Character.Humanoid.PlatformStand=true;
local v1743=(v818.CFrame-v818.CFrame.p) + v817.position ;
if ( not v361.w and  not v361.s and  not v361.a and  not v361.d) then speed=1;
end 
if v361.w then v1743=v1743 + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
speed=speed + v360 ;
end 
if v361.s then v1743=v1743-(workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
speed=speed + v360 ;
end 
if v361.d then v1743=v1743 * CFrame.new(speed,0,0) ;
speed=speed + v360 ;
end 
if v361.a then v1743=v1743 * CFrame.new( -speed,0,0) ;
speed=speed + v360 ;
end 
if (speed>v360) then speed=v360;
end v817.position=v1743.p;
if v361.w then v818.CFrame=workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(speed * 15 ),0,0) ;
elseif v361.s then v818.CFrame=workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15 ),0,0) ;
else v818.CFrame=workspace.CurrentCamera.CoordinateFrame;
end 
until  not Fly 
if v818 then v818:Destroy();
end 
if v817 then v817:Destroy();
end flying=false;
localplayer.Character.Humanoid.PlatformStand=false;
speed=0;
end v362=v357.KeyDown:connect(
function(v827) 
if ( not v359 or  not v359.Parent) then flying=false;
v362:disconnect();
v363:disconnect();
return;
end 
if (v827=="w") then v361.w=true;
elseif (v827=="s") then v361.s=true;
elseif (v827=="a") then v361.a=true;
elseif (v827=="d") then v361.d=true;
end 
end);
v363=v357.KeyUp:connect(
function(v828) 
if (v828=="w") then v361.w=false;
elseif (v828=="s") then v361.s=false;
elseif (v828=="a") then v361.a=false;
elseif (v828=="d") then v361.d=false;
end 
end);
v364();
end 
function Click() game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672));
end 
function AutoHaki() 
if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
end 
end 
function EquipWeapon(v365) 
if  not Nill then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(v365) then Tool=game.Players.LocalPlayer.Backpack:FindFirstChild(v365);
wait(0.1);
game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
end 
end 
end 
function BTP(v366) pcall(
function() 
if (((v366.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>=1500) and  not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health>0)) then 
repeat wait();
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v366;
wait(0.05);
game.Players.LocalPlayer.Character.Head:Destroy();
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v366;
until ((v366.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<1500) and (game.Players.LocalPlayer.Character.Humanoid.Health>0)  
end 
end);
end 
local v48=false;
function WaitHRP(v367) 
if  not v367 then 
return;
end 
return v367.Character:WaitForChild("HumanoidRootPart",9);
end 
function CheckNearestTeleporter(v368) 
local v369=v368.Position;
local v370=math.huge;
local v371=nil;
local v372=game.PlaceId;
local v373={};
if (v372==2753915549) then v373={Sky3=Vector3.new( -7894,5547, -380),Sky3Exit=Vector3.new( -4607,874, -1667),UnderWater=Vector3.new(61163,11,1819),UnderwaterExit=Vector3.new(4050, -1, -1814)};
elseif (v372==4442272183) then v373={["Swan Mansion"]=Vector3.new( -390,332,673),["Swan Room"]=Vector3.new(2285,15,905),["Cursed Ship"]=Vector3.new(923,126,32852),["Zombie Island"]=Vector3.new( -6509,83, -133)};
elseif (v372==7449423635) then v373={["Floating Turtle"]=Vector3.new( -12462,375, -7552),["Hydra Island"]=Vector3.new(5745,610, -267),Mansion=Vector3.new( -12462,375, -7552),Castle=Vector3.new( -5036,315, -3179),["Beautiful Pirate"]=Vector3.new(5319,23, -93),["Beautiful Room"]=Vector3.new(5314.58203,22.5364361, -125.942276,1,2.1476277e-8, -1.9911115e-13, -2.1476277e-8,1, -3.0510602e-8,1.984559e-13,3.0510602e-8,1),["Temple of Time"]=Vector3.new(28286,14897,103)};
end 
for v829,v830 in pairs(v373) 
do 
local v831=(v830-v369).Magnitude;
if (v831<v370) then v370=v831;
v371=v830;
end 
end 
local v374=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
if (v370<=(v369-v374).Magnitude) then 
return v371;
end 
end 
function requestEntrance(v375) game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance",v375);
local v376=game.Players.LocalPlayer.Character.HumanoidRootPart;
v376.CFrame=v376.CFrame + Vector3.new(0,50,0) ;
task.wait(0.5);
end 
local v49=false;
function topos(v378) 
local v379=game.Players.LocalPlayer;
if (v379.Character and (v379.Character.Humanoid.Health>0) and v379.Character:FindFirstChild("HumanoidRootPart")) then 
if  not v378 then 
return;
end 
local v1746=(v378.Position-v379.Character.HumanoidRootPart.Position).Magnitude;
local v1747=CheckNearestTeleporter(v378);
if v1747 then requestEntrance(v1747);
end 
if  not v379.Character:FindFirstChild("PartTele") then 
local v2005=Instance.new("Part",v379.Character);
v2005.Size=Vector3.new(10,1,10);
v2005.Name="PartTele";
v2005.Anchored=true;
v2005.Transparency=1;
v2005.CanCollide=false;
v2005.CFrame=WaitHRP(v379).CFrame;
v2005:GetPropertyChangedSignal("CFrame"):Connect(
function() 
if  not v48 then 
return;
end task.wait();
if (v379.Character and v379.Character:FindFirstChild("HumanoidRootPart")) then 
local v2323=v2005.CFrame;
WaitHRP(v379).CFrame=CFrame.new(v2323.Position.X,v378.Position.Y,v2323.Position.Z);
end 
end);
end v48=true;
if (v49 and (v1746>distbyp)) then bypass(v378);
end 
local v1748=getgenv().TweenSpeed;
if (v1746<=250) then v1748=v1748 * 3 ;
end 
local v1749=CFrame.new(v378.Position.X,v378.Position.Y,v378.Position.Z);
local v1750=game:GetService("TweenService"):Create(v379.Character.PartTele,TweenInfo.new(v1746/v1748 ,Enum.EasingStyle.Linear),{CFrame=v378});
v1750:Play();
v1750.Completed:Connect(
function(v1894) 
if (v1894==Enum.PlaybackState.Completed) then 
if v379.Character:FindFirstChild("PartTele") then v379.Character.PartTele:Destroy();
end v48=false;
end 
end);
end 
end 
function TP1(v380) topos(v380);
end 
function TP2(v381) 
local v382=game.Players.LocalPlayer;
if (v382.Character and (v382.Character.Humanoid.Health>0) and v382.Character:FindFirstChild("HumanoidRootPart")) then 
local v1751=(v381.Position-v382.Character.HumanoidRootPart.Position).Magnitude;
if  not v381 then 
return;
end 
local v1752=CheckNearestTeleporter(v381);
if v1752 then requestEntrance(v1752);
end 
if  not v382.Character:FindFirstChild("PartTele") then 
local v2013=Instance.new("Part",v382.Character);
v2013.Size=Vector3.new(10,1,10);
v2013.Name="PartTele";
v2013.Anchored=true;
v2013.Transparency=1;
v2013.CanCollide=true;
v2013.CFrame=WaitHRP(v382).CFrame;
v2013:GetPropertyChangedSignal("CFrame"):Connect(
function() 
if  not v48 then 
return;
end task.wait();
if (v382.Character and v382.Character:FindFirstChild("HumanoidRootPart")) then WaitHRP(v382).CFrame=v2013.CFrame;
end 
end);
end v48=true;
local v1753=game:GetService("TweenService"):Create(v382.Character.PartTele,TweenInfo.new(v1751/350 ,Enum.EasingStyle.Linear),{CFrame=v381});
v1753:Play();
v1753.Completed:Connect(
function(v1895) 
if (v1895==Enum.PlaybackState.Completed) then 
if v382.Character:FindFirstChild("PartTele") then v382.Character.PartTele:Destroy();
end v48=false;
end 
end);
end 
end 
function stopTeleport() v48=false;
local v383=game.Players.LocalPlayer;
if v383.Character:FindFirstChild("PartTele") then v383.Character.PartTele:Destroy();
end 
end 
spawn(
function() 
while task.wait() 
do 
if  not v48 then stopTeleport();
end 
end 
end);
spawn(
function() 
local v384=game.Players.LocalPlayer;
while task.wait() 
do pcall(
function() 
if v384.Character:FindFirstChild("PartTele") then 
if ((v384.Character.HumanoidRootPart.Position-v384.Character.PartTele.Position).Magnitude>=100) then stopTeleport();
end 
end 
end);
end 
end);
local v50=game.Players.LocalPlayer;
local 
function v51(v385) 
local v386=v385:WaitForChild("Humanoid");
v386.Died:Connect(
function() stopTeleport();
end);
end v50.CharacterAdded:Connect(v51);
if v50.Character then v51(v50.Character);
end 
function TPB(v387) 
local v388=game:service("TweenService");
local v389=TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position-v387.Position).Magnitude/300 ,Enum.EasingStyle.Linear);
tween=v388:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat,v389,{CFrame=v387});
tween:Play();
local v390={};
v390.Stop=
function(v832) tween:Cancel();
end;
return v390;
end Type=1;
spawn(
function() 
while wait() 
do 
if (Type==1) then Pos=CFrame.new(0,PosY, -19);
elseif (Type==2) then Pos=CFrame.new(19,PosY,0);
elseif (Type==3) then Pos=CFrame.new(0,PosY,19);
elseif (Type==4) then Pos=CFrame.new( -19,PosY,0);
end 
end 
end);
spawn(
function() 
while wait(0.1) 
do Type=1;
wait(0.2);
Type=2;
wait(0.2);
Type=3;
wait(0.2);
Type=4;
wait(0.2);
end 
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or FarmBoss or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.Greybeard or _G.pole or _G.saw or _G.FarmNearest or _G.FarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.SegmentLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune) then 
if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then 
local v2160=Instance.new("BodyVelocity");
v2160.Name="BodyClip";
v2160.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
v2160.MaxForce=Vector3.new(100000,100000,100000);
v2160.Velocity=Vector3.new(0,0,0);
end 
end 
end 
end);
end);
spawn(
function() pcall(
function() game:GetService("RunService").Stepped:Connect(
function() 
if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.Greybeard or _G.saw or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or _G.KillLeviathan or _G.SegmentLeviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then 
for v2090,v2091 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) 
do 
if v2091:IsA("BasePart") then v2091.CanCollide=false;
end 
end 
end 
end);
end);
end);
function InstancePos(v392) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v392;
end 
function TP3(v394) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v394;
end 
spawn(
function() 
while wait() 
do 
if (_G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.FarmBossHallow or _G.Factory or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.Level or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.d or _G.waden or _G.gay or _G.ObservationHakiV2 or _G.FarmMaterial or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.RaidPirate or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.AttackDummy or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Farmfast or _G.RaidPirate or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or (_G.KillGhostShip==true)) then pcall(
function() game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true);
end);
end 
end 
end);
spawn(
function() game:GetService("RunService").RenderStepped:Connect(
function() 
if (_G.Click or Fastattack) then pcall(
function() game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1));
end);
end 
end);
end);
function StopTween(v396) 
if  not v396 then _G.StopTween=true;
wait();
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
wait();
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
end _G.StopTween=false;
_G.Clip=false;
end 
if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
end 
end 
spawn(
function() pcall(
function() 
while wait() 
do 
for v1896,v1897 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) 
do 
if v1897:IsA("Tool") then 
if v1897:FindFirstChild("RemoteFunctionShoot") then SelectWeaponGun=v1897.Name;
end 
end 
end 
end 
end);
end);
game:GetService("Players").LocalPlayer.Idled:connect(
function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
wait(1);
game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
end);
PosY=25;
Kill_At=28;
local v52=v3:Window("HBelz Hub-Blox Fruits [ Free ]","");
local v53=v52:T("Trạng Thái","rbxassetid://10734984606");
local v54=v52:T("Chung","rbxassetid://10723407389");
local v55=v52:T("Cài Đặt","rbxassetid://10734950309");
local v56=v52:T("Nhiệm Vụ","rbxassetid://10734975692");
local v57=v52:T("Tộc V4","rbxassetid://10747372167");
local v58=v52:T("Sự Kiện","rbxassetid://10709783577");
local v59=v52:T("Người Chơi","rbxassetid://10747373176");
local v60=v52:T("Định Vị","rbxassetid://10723346959");
local v61=v52:T("Tập Kích","rbxassetid://10723345749");
local v62=v52:T("Di Chuyển","rbxassetid://10723434557");
local v63=v52:T("Cửa Hàng","rbxassetid://10734952479");
local v64=v52:T("Trái Ác Quỷ","rbxassetid://10709761889");
local v65=v52:T("Máy Chủ","rbxassetid://10709782582");
v53:Seperator("Vào Discord");
v53:Label("Mọi Người Vào Giao Lưu");
v53:Button("Sao Chép Link Discord",
function() setclipboard("https://discord.com/invite/hcJ8PHtkfy");
end);
v53:Seperator("Thời Gian");
Time=v53:Label("Thời Gian Hoạt Động");
function UpdateTime() 
local v397=math.floor(workspace.DistributedGameTime + 0.5 );
local v398=math.floor(v397/(60^2) )%24 ;
local v399=math.floor(v397/(60^1) )%60 ;
local v400=math.floor(v397/(60^0) )%60 ;
Time:Set("[Thời Gian Máy Chủ]: Giờ: "   .. v398   .. " Phút: "   .. v399   .. " Giây: "   .. v400 );
end 
spawn(
function() 
while task.wait() 
do pcall(
function() UpdateTime();
end);
end 
end);
Client=v53:Label("Client");
function UpdateClient() 
local v401=workspace:GetRealPhysicsFPS();
Client:Set("[FPS]: "   .. v401 );
end 
spawn(
function() 
while true 
do wait(0.1);
UpdateClient();
end 
end);
Client1=v53:Label("Client");
function UpdateClient1() 
local v402=game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
Client1:Set("[PING]: "   .. v402 );
end 
spawn(
function() 
while true 
do wait(0.1);
UpdateClient1();
end 
end);
v53:Seperator("Người Chơi");
local v66=v53:Label("Tộc");
spawn(
function() 
while wait() 
do pcall(
function() v66:Set("Race:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
end);
end 
end);
local v67=v53:Label("Beli");
spawn(
function() 
while wait() 
do pcall(
function() v67:Set("Beli:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
end);
end 
end);
local v68=v53:Label("Điểm Tím");
spawn(
function() 
while wait() 
do pcall(
function() v68:Set("Diểm Tím:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
end);
end 
end);
local v69=v53:Label("Tiền Thưởng");
spawn(
function() 
while wait() 
do pcall(
function() v69:Set("Tiền Thưởng:"   .. " "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
end);
end 
end);
local v70=v53:Label("Trái");
spawn(
function() 
while wait() 
do pcall(
function() 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then v70:Set("Trái:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
else v70:Set("Không Có Trái");
end 
end);
end 
end);
v54:Seperator("Vũ Khí");
local v71={"Võ","Kiếm","Trái","Súng"};
_G.SelectWeapon="Võ";
v54:Dropdown("Chọn Vũ Khí",v71,
function(v403) _G.SelectWeapon=v403;
end);
task.
spawn(
function() 
while wait() 
do pcall(
function() 
if (_G.SelectWeapon=="Võ") then 
for v2092,v2093 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if (v2093.ToolTip=="Melee") then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2093.Name)) then _G.SelectWeapon=v2093.Name;
end 
end 
end elseif (_G.SelectWeapon=="Kiếm") then 
for v2329,v2330 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if (v2330.ToolTip=="Sword") then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2330.Name)) then _G.SelectWeapon=v2330.Name;
end 
end 
end elseif (_G.SelectWeapon=="Súng") then 
for v2623,v2624 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if (v2624.ToolTip=="Gun") then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2624.Name)) then _G.SelectWeapon=v2624.Name;
end 
end 
end elseif (_G.SelectWeapon=="Trái") then 
for v2816,v2817 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if (v2817.ToolTip=="Blox Fruit") then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2817.Name)) then _G.SelectWeapon=v2817.Name;
end 
end 
end 
end 
end);
end 
end);
local v72={"Bình Thường","Nhanh","Siêu Nhanh","Cực Nhanh"};
_G.FastAttackDelay="Bình Thường";
v54:Dropdown("Tốc Độ Đánh",v72,
function(v404) _G.FastAttackDelay=v404;
end);
spawn(
function() 
while wait(0.1) 
do 
if _G.FastAttackDelay then pcall(
function() 
if (_G.FastAttackDelay=="Bình Thường") then _G.FastAttackDelay=0.13;
elseif (_G.FastAttackDelay=="Nhanh") then _G.FastAttackDelay=0.07;
elseif (_G.FastAttackDelay=="Siêu Nhanh") then _G.FastAttackDelay=0.04;
elseif (_G.FastAttackDelay=="Cực Nhanh") then _G.FastAttackDelay=0;
end 
end);
end 
end 
end);
_G.FastAttack=true;
if _G.FastAttack then 
local _ENV=(getgenv or getrenv or getfenv)();
local 
function v833(v1754,v1755) 
local v1756,v1757=pcall(
function() 
return v1754:WaitForChild(v1755);
end);
if ( not v1756 or  not v1757) then warn("noooooo: "   .. v1755 );
end 
return v1757;
end 
local 
function v834(v1758,...) 
local v1759=v1758;
for v1898,v1899 in {...} 
do v1759=v1759:FindFirstChild(v1899) or v833(v1759,v1899) ;
if  not v1759 then break;
end 
end 
return v1759;
end 
local v835=game:GetService("VirtualInputManager");
local v836=game:GetService("CollectionService");
local v837=game:GetService("ReplicatedStorage");
local v838=game:GetService("TeleportService");
local v839=game:GetService("RunService");
local v840=game:GetService("Players");
local v841=v840.LocalPlayer;
if  not v841 then warn("Không tìm thấy người chơi cục bộ.");
return;
end 
local v842=v833(v837,"Remotes");
if  not v842 then 
return;
end 
local v843=v833(v842,"Validator");
local v844=v833(v842,"CommF_");
local v845=v833(v842,"CommE");
local v846=v833(workspace,"ChestModels");
local v847=v833(workspace,"_WorldOrigin");
local v848=v833(workspace,"Characters");
local v849=v833(workspace,"Enemies");
local v850=v833(workspace,"Map");
local v851=v833(v847,"EnemySpawns");
local v852=v833(v847,"Locations");
local v853=v839.RenderStepped;
local v854=v839.Heartbeat;
local v855=v839.Stepped;
local v856=v833(v837,"Modules");
local v857=v833(v856,"Net");
local v858=sethiddenproperty or 
function(...) 
return ...;
end ;
local v859=setupvalue or (debug and debug.setupvalue) ;
local v860=getupvalue or (debug and debug.getupvalue) ;
local v861={AutoClick=true,ClickDelay=0};
local v862={};
v862.FastAttack=(
function() 
if _ENV.rz_FastAttack then 
return _ENV.rz_FastAttack;
end 
local v1760={Distance=100,attackMobs=true,attackPlayers=true,Equipped=nil};
local v1761=v833(v857,"RE/RegisterAttack");
local v1762=v833(v857,"RE/RegisterHit");
local 
function v1763(v1900) 
return v1900 and v1900:FindFirstChild("Humanoid") and (v1900.Humanoid.Health>0) ;
end 
local 
function v1764(v1901,v1902) 
local v1903=nil;
for v2021,v2022 in v1902:GetChildren() 
do 
local v2023=v2022:FindFirstChild("Head");
if (v2023 and v1763(v2022) and (v841:DistanceFromCharacter(v2023.Position)<v1760.Distance)) then 
if (v2022~=v841.Character) then table.insert(v1901,{v2022,v2023});
v1903=v2023;
end 
end 
end 
return v1903;
end v1760.Attack=
function(v1904,v1905,v1906) 
if ( not v1905 or ( #v1906==0)) then 
return;
end v1761:FireServer(v861.ClickDelay or 0 );
v1762:FireServer(v1905,v1906);
end;
v1760.AttackNearest=
function(v1907) 
local v1908={};
local v1909=v1764(v1908,v849);
local v1910=v1764(v1908,v848);
if ( #v1908>0) then v1907:Attack(v1909 or v1910 ,v1908);
else task.wait(0);
end 
end;
v1760.BladeHits=
function(v1911) 
local v1912=v1763(v841.Character) and v841.Character:FindFirstChildOfClass("Tool") ;
if (v1912 and (v1912.ToolTip~="Gun")) then v1911:AttackNearest();
else task.wait(0);
end 
end;
task.
spawn(
function() 
while task.wait(v861.ClickDelay) 
do 
if v861.AutoClick then v1760:BladeHits();
end 
end 
end);
_ENV.rz_FastAttack=v1760;
return v1760;
end)();
end v54:Seperator("Tự Động Cày");
v54:Toggle("Cày Cấp",_G.Farm,
function(v405) _G.Level=v405;
StopTween(_G.Farm);
end);
spawn(
function() 
while wait() 
do 
if _G.Level then pcall(
function() 
local v2024=game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
if  not string.find(v2024,NameMon) then StartMagnet=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) then StartMagnet=false;
CheckQuest();
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude>3500) then BTP(CFrameQuest);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude<3500) then TP1(CFrameQuest);
end else TP1(CFrameQuest);
end 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-CFrameQuest.Position).Magnitude<=5) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest);
end elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) then CheckQuest();
if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then 
for v2818,v2819 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2819:FindFirstChild("HumanoidRootPart") and v2819:FindFirstChild("Humanoid") and (v2819.Humanoid.Health>0)) then 
if (v2819.Name==Mon) then 
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
PosMon=v2819.HumanoidRootPart.CFrame;
TP1(v2819.HumanoidRootPart.CFrame * Pos );
v2819.HumanoidRootPart.CanCollide=false;
v2819.Humanoid.WalkSpeed=0;
v2819.Head.CanCollide=false;
v2819.HumanoidRootPart.Size=Vector3.new(50,50,50);
StartMagnet=true;
until  not _G.Level or (v2819.Humanoid.Health<=0) or  not v2819.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  else StartMagnet=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
end 
end 
end else TP1(CFrameMon);
UnEquipWeapon(_G.SelectWeapon);
StartMagnet=false;
if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2) );
end 
end 
end 
end);
end 
end 
end);
if World1 then v54:Toggle("Cày Cấp Nhanh ( Cấp 1-300 )",_G.FarmFast,
function(v1768) _G.Farmfast=v1768;
StopTween(_G.Farmfast);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if (_G.Farmfast and World1) then 
if (game.Players.LocalPlayer.Data.Level.Value>=10) then _G.Level=false;
_G.Farmfast=true;
end 
end 
end 
end);
end);
spawn(
function() 
while wait() 
do 
if (_G.Farmfast and World1) then pcall(
function() 
if (game.Players.LocalPlayer.Data.Level.Value>=10) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -7894.6176757813,5547.1416015625, -380.29119873047));
for v2625,v2626 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2626.Name=="Shanda") then 
if (v2626:FindFirstChild("Humanoid") and v2626:FindFirstChild("HumanoidRootPart") and (v2626.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2626.HumanoidRootPart.CanCollide=false;
v2626.Humanoid.WalkSpeed=0;
StardMag=true;
FastMon=v2626.HumanoidRootPart.CFrame;
v2626.HumanoidRootPart.Size=Vector3.new(80,80,80);
TP1(v2626.HumanoidRootPart.CFrame * Pos );
until  not _G.Farmfast or  not v2626.Parent or (v2626.Humanoid.Health<=0)  StardMag=false;
TP1(CFrame.new( -7678.48974609375,5566.40380859375, -497.2156066894531));
UnEquipWeapon(_G.SelectWeapon);
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5,10,2) );
end 
end);
end 
end 
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if (_G.Farmfast and World1) then 
if (game.Players.LocalPlayer.Data.Level.Value>=75) then _G.Farmfast=false;
_G.PlayerHunter=true;
end 
end 
end 
end);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if (_G.Farmfast and World1) then 
if (game.Players.LocalPlayer.Data.Level.Value>=200) then _G.Level=true;
_G.PlayerHunter=false;
end 
end 
end 
end);
end);
end v54:Toggle("Cày Cấp Và Mua Item",false,
function(v406) _G.Level=v406;
_G.SelectWeapon="Combat";
_G.Stats_Kaitun=v406;
_G.Superhuman=v406;
_G.SecondSea=v406;
_G.ThirdSea=v406;
_G.BuyLegendarySword=v406;
_G.StoreFruit=v406;
_G.Random_Auto=v406;
_G.BuyAllAib=v406;
_G.BuyAllSword=v406;
StopTween(_G.Farm);
end);
spawn(
function() 
while wait() 
do 
if _G.BuyAllSword then pcall(
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane");
if _G.BuyHop then wait(10);
Hop();
end 
end);
end 
end 
end);
spawn(
function() 
while wait() 
do 
if _G.BuyAllAib then pcall(
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru");
if _G.HopBuy then wait(10);
Hop();
end 
end);
end 
end 
end);
v54:Toggle("Đánh Quái Ở Gần",_G.FarmNearest,
function(v407) _G.FarmNearest=v407;
StopTween(_G.FarmNearest);
end);
spawn(
function() 
while wait() 
do 
if _G.FarmNearest then 
for v2025,v2026 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2026.Name and v2026:FindFirstChild("Humanoid")) then 
if (v2026.Humanoid.Health>0) then 
repeat wait();
EquipWeapon(_G.SelectWeapon);
if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then 
local v2820={[1]="Buso"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2820));
end topos(v2026.HumanoidRootPart.CFrame * Pos );
v2026.HumanoidRootPart.CanCollide=false;
Fastattack=true;
v2026.HumanoidRootPart.Size=Vector3.new(60,60,60);
AutoFarmNearestMagnet=true;
PosMon=v2026.HumanoidRootPart.CFrame;
until  not _G.FarmNearest or  not v2026.Parent or (v2026.Humanoid.Health<=0)  AutoFarmNearestMagnet=false;
Fastattack=false;
end 
end 
end 
end 
end 
end);
v54:Seperator("Elite");
local v73=v54:Label("N/A");
spawn(
function() 
while wait() 
do pcall(
function() 
if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then v73:Set("Trạng thái: Có");
else v73:Set("Trạng thái: Không");
end 
end);
end 
end);
v54:Toggle("Đánh Elite Hunter",_G.Elitehunter,
function(v408) _G.Elitehunter=v408;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
StopTween(_G.Elitehunter);
end);
spawn(
function() 
while wait() 
do 
if (_G.Elitehunter and World3) then pcall(
function() 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) then 
if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban")) then 
if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then 
for v2821,v2822 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2822.Name=="Diablo") or (v2822.Name=="Deandre") or (v2822.Name=="Urban")) then 
if (v2822:FindFirstChild("Humanoid") and v2822:FindFirstChild("HumanoidRootPart") and (v2822.Humanoid.Health>0)) then 
repeat wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2822.HumanoidRootPart.CanCollide=false;
v2822.Humanoid.WalkSpeed=0;
v2822.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2822.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ) );
game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672));
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Elitehunter==false) or (v2822.Humanoid.Health<=0) or  not v2822.Parent  
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
end 
end elseif (_G.EliteHunterHop and (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("EliteHunter")=="I don't have anything 
for you right now. Come back later.")) then hop();
else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
end 
end);
end 
end 
end);
v54:Toggle("Đánh Elite Đổi Sever",_G.EliteHunterHop,
function(v409) _G.EliteHunterHop=v409;
end);
v54:Seperator("Rương");
v54:Toggle("Nhặt Rương",false,
function(v410) _G.FarmChest=v410;
StopTween(_G.FarmChest);
end);
spawn(
function() 
while wait() 
do 
if _G.FarmChest then 
local v1913=game:GetService("Players");
local v1914=v1913.LocalPlayer;
local v1915=v1914.Character or v1914.CharacterAdded:Wait() ;
local v1916=v1915:GetPivot().Position;
local v1917=game:GetService("CollectionService");
local v1918=v1917:GetTagged("_ChestTagged");
local v1919,v1920=math.huge;
for v2027=1, #v1918 
do 
local v2028=v1918[v2027];
local v2029=(v2028:GetPivot().Position-v1916).Magnitude;
if ( not v2028:GetAttribute("IsDisabled") and (v2029<v1919)) then v1919,v1920=v2029,v2028;
end 
end 
if v1920 then 
local v2094=v1920:GetPivot().Position;
local v2095=CFrame.new(v2094);
topos(v2095);
end 
end 
end 
end);
v54:Toggle("Nhặt Rương Bypass (Anti Reset)",false,
function(v411) _G.ChestBypass=v411;
end);
spawn(
function() 
while wait() 
do 
if _G.ChestBypass then 
local v1921=game:GetService("Players");
local v1922=v1921.LocalPlayer;
local v1923=game:GetService("CollectionService");
local v1924=v1922.Character or v1922.CharacterAdded:Wait() ;
local v1925=tick();
while (tick() -v1925)<4  
do v1924=v1922.Character or v1922.CharacterAdded:Wait() ;
local v2030=v1924:GetPivot().Position;
local v2031=v1923:GetTagged("_ChestTagged");
local v2032,v2033=math.huge;
for v2096=1, #v2031 
do 
local v2097=v2031[v2096];
local v2098=(v2097:GetPivot().Position-v2030).Magnitude;
if ( not v2097:GetAttribute("IsDisabled") and (v2098<v2032)) then v2032,v2033=v2098,v2097;
end 
end 
if v2033 then 
local v2166=v2033:GetPivot().Position;
v1924:PivotTo(CFrame.new(v2166));
task.wait(0.2);
else break;
end 
end 
if v1922.Character then v1922.Character:BreakJoints();
v1922.CharacterAdded:Wait();
end 
end 
end 
end);
v54:Seperator("Xương");
local v74={["Reborn Skeleton"]=CFrame.new( -8769.58984,142.13063,6055.27637),["Living Zombie"]=CFrame.new( -10156.4531,138.652481,5964.5752),["Demonic Soul"]=CFrame.new( -9525.17188,172.13063,6152.30566),["Posessed Mummy"]=CFrame.new( -9570.88281,5.81831884,6187.86279)};
spawn(
function() 
spawn(
function() 
while task.wait(0.1) 
do 
if BonesBring then pcall(
function() 
for v2167,v2168 in pairs(game.Workspace.Enemies:GetChildren()) 
do 
if ((v2168.Name=="Reborn Skeleton") or (v2168.Name=="Living Zombie") or (v2168.Name=="Demonic Soul") or (v2168.Name=="Posessed Mummy")) then 
local v2578=v74[v2168.Name];
if v2578 then v2168.HumanoidRootPart.CFrame=v2578;
end v2168.Head.CanCollide=false;
v2168.Humanoid.Sit=false;
v2168.Humanoid:ChangeState(14);
v2168.HumanoidRootPart.CanCollide=false;
v2168.Humanoid.JumpPower=0;
v2168.Humanoid.WalkSpeed=0;
if v2168.Humanoid:FindFirstChild("Animator") then v2168.Humanoid:FindFirstChild("Animator"):Destroy();
end sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end);
end 
end 
end);
end);
BoneCheck=v54:Label("Xương Của Bạn: N/A");
spawn(
function() 
while wait() 
do pcall(
function() BoneCheck:Set("Xương Của Bạn: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")) );
end);
end 
end);
v54:Toggle("Cày Xương",false,
function(v412) _G.Bone=v412;
StopTween(_G.Bone);
end);
v54:Toggle("Nhận Nhiệm Vụ Xương",true,
function(v413) _G.QuestBone=v413;
end);
local v75=CFrame.new( -9506.234375,172.130615234375,6117.0771484375);
spawn(
function() 
while wait() 
do 
if (_G.Bone and  not _G.QuestBone and World3) then pcall(
function() 
if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then 
for v2331,v2332 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2332.Name=="Reborn Skeleton") or (v2332.Name=="Living Zombie") or (v2332.Name=="Demonic Soul") or (v2332.Name=="Posessed Mummy")) then 
if (v2332:FindFirstChild("Humanoid") and v2332:FindFirstChild("HumanoidRootPart") and (v2332.Humanoid.Health>0)) then 
repeat wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2332.HumanoidRootPart.CanCollide=false;
v2332.Humanoid.WalkSpeed=0;
v2332.Head.CanCollide=false;
BonesBring=true;
PosMonBone=v2332.HumanoidRootPart.CFrame;
topos(v2332.HumanoidRootPart.CFrame * Pos );
until  not _G.Bone or  not v2332.Parent or (v2332.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v75.Position).Magnitude>3500) then BTP(v75);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v75.Position).Magnitude<3500) then topos(v75);
end else topos(v75);
end UnEquipWeapon(_G.SelectWeapon);
BonesBring=false;
topos(CFrame.new( -9506.234375,172.130615234375,6117.0771484375));
for v2333,v2334 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) 
do 
if (v2334.Name=="Reborn Skeleton") then topos(v2334.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif (v2334.Name=="Living Zombie") then topos(v2334.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif (v2334.Name=="Demonic Soul") then topos(v2334.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif (v2334.Name=="Posessed Mummy") then topos(v2334.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
end 
end 
end 
end);
end 
end 
end);
local v76=CFrame.new( -9515.75,174.8521728515625,6079.40625);
spawn(
function() 
while wait() 
do 
if (_G.Bone and _G.QuestBone and World3) then pcall(
function() 
local v2034=game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
if  not string.find(v2034,"Demonic Soul") then BonesBring=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) then BonesBring=false;
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v76.Position).Magnitude>3500) then BTP(v76);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v76.Position).Magnitude<3500) then topos(v76);
end else topos(v76);
end 
if ((v76.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1);
end elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) then 
if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then 
for v2823,v2824 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2824:FindFirstChild("HumanoidRootPart") and v2824:FindFirstChild("Humanoid") and (v2824.Humanoid.Health>0)) then 
if ((v2824.Name=="Reborn Skeleton") or (v2824.Name=="Living Zombie") or (v2824.Name=="Demonic Soul") or (v2824.Name=="Posessed Mummy")) then 
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Demonic Soul") then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
PosMonBone=v2824.HumanoidRootPart.CFrame;
topos(v2824.HumanoidRootPart.CFrame * Pos );
v2824.HumanoidRootPart.CanCollide=false;
v2824.Humanoid.WalkSpeed=0;
v2824.Head.CanCollide=false;
BonesBring=true;
until  not _G.Bone or (v2824.Humanoid.Health<=0) or  not v2824.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  else BonesBring=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
end 
end 
end else BonesBring=false;
if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15,10,2) );
end 
end 
end 
end);
end 
end 
end);
v54:Toggle("Đổi Xương",_G.Random_Bone,
function(v414) _G.Random_Bone=v414;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Random_Bone then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1);
end 
end 
end);
end);
v54:Toggle("Tự động cầu nguyện",pry,
function(v415) _G.Pray=v415;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Pray then TP1(CFrame.new( -8652.99707,143.450119,6170.50879, -0.983064115, -2.4800553e-10,0.18326205, -1.7891039e-9,1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
wait();
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1);
end 
end 
end);
end);
v54:Toggle("Tự động thử vận may",Trylux,
function(v416) _G.Trylux=v416;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Trylux then TP1(CFrame.new( -8652.99707,143.450119,6170.50879, -0.983064115, -2.4800553e-10,0.18326205, -1.7891039e-9,1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
wait();
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2);
end 
end 
end);
end);
v54:Seperator("Bột");
local v77={["Cookie Crafter"]=CFrame.new( -2333.28052,37.8239059, -12093.2861),["Cake Guard"]=CFrame.new( -1575.56433,37.8238907, -12416.2529),["Baking Staff"]=CFrame.new( -1872.35742,37.8239517, -12899.4248),["Head Baker"]=CFrame.new( -2223.1416,53.5283203, -12854.752)};
spawn(
function() 
spawn(
function() 
while task.wait(0.1) 
do 
if CakeBring then pcall(
function() 
for v2169,v2170 in pairs(game.Workspace.Enemies:GetChildren()) 
do 
if ((v2170.Name=="Cookie Crafter") or (v2170.Name=="Cake Guard") or (v2170.Name=="Baking Staff") or (v2170.Name=="Head Baker")) then 
local v2584=v77[v2170.Name];
if v2584 then v2170.HumanoidRootPart.CFrame=v2584;
end v2170.Head.CanCollide=false;
v2170.Humanoid.Sit=false;
v2170.Humanoid:ChangeState(14);
v2170.HumanoidRootPart.CanCollide=false;
v2170.Humanoid.JumpPower=0;
v2170.Humanoid.WalkSpeed=0;
if v2170.Humanoid:FindFirstChild("Animator") then v2170.Humanoid:FindFirstChild("Animator"):Destroy();
end sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end);
end 
end 
end);
end);
local v78=v54:Label("Trạng Thái");
spawn(
function() 
while wait() 
do pcall(
function() 
if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==88) then v78:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41) );
elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==87) then v78:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40) );
elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==86) then v78:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39) );
else v78:Set("Trùm Đã Xuất Hiện");
end 
end);
end 
end);
v54:Toggle("Cày Tư Lệnh Bột",false,
function(v417) _G.DoughtBoss=v417;
StopTween(_G.DoughtBoss);
end);
v54:Toggle("Nhận Nhiệm Vụ Tư Lệnh Bột",true,
function(v418) _G.QuestCake=v418;
end);
spawn(
function() 
while wait() 
do 
if (_G.DoughtBoss and  not _G.QuestCake) then pcall(
function() 
local v2035=CFrame.new( -2091.911865234375,70.00884246826172, -12142.8359375);
if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then 
for v2335,v2336 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2336.Name=="Cake Prince") or (v2336.Name=="Dough King")) then 
if (v2336:FindFirstChild("Humanoid") and v2336:FindFirstChild("HumanoidRootPart") and (v2336.Humanoid.Health>0)) then 
repeat wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2336.HumanoidRootPart.CanCollide=false;
v2336.Humanoid.WalkSpeed=0;
topos(v2336.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.DoughtBoss or  not v2336.Parent or (v2336.Humanoid.Health<=0)  
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
else 
if (KillMob==0) then 
end 
if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then 
for v2825,v2826 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2826.Name=="Cookie Crafter") or (v2826.Name=="Cake Guard") or (v2826.Name=="Baking Staff") or (v2826.Name=="Head Baker")) then 
if (v2826:FindFirstChild("Humanoid") and v2826:FindFirstChild("HumanoidRootPart") and (v2826.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2826.HumanoidRootPart.CanCollide=false;
v2826.Humanoid.WalkSpeed=0;
v2826.Head.CanCollide=false;
CakeBring=true;
PosMonDoughtOpenDoor=v2826.HumanoidRootPart.CFrame;
topos(v2826.HumanoidRootPart.CFrame * Pos );
until  not _G.DoughtBoss or  not v2826.Parent or (v2826.Humanoid.Health<=0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob==0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v2035.Position).Magnitude>3500) then BTP(v2035);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v2035.Position).Magnitude<3500) then topos(v2035);
end else topos(v2035);
end CakeBring=false;
UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -2091.911865234375,70.00884246826172, -12142.8359375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
end 
end 
end 
end);
end 
end 
end);
spawn(
function() 
while wait() 
do 
if (_G.DoughtBoss and _G.QuestCake and World3) then pcall(
function() 
local v2036=CFrame.new( -2021.32007,37.7982254, -12028.7295,0.957576931, -8.8030205e-8,0.288177818,6.930119e-8,1,7.519312e-8, -0.288177818, -5.2032135e-8,0.957576931);
if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then 
for v2337,v2338 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2338.Name=="Cake Prince") or (v2338.Name=="Dough King")) then 
if (v2338:FindFirstChild("Humanoid") and v2338:FindFirstChild("HumanoidRootPart") and (v2338.Humanoid.Health>0)) then 
repeat wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2338.HumanoidRootPart.CanCollide=false;
v2338.Humanoid.WalkSpeed=0;
topos(v2338.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.DoughtBoss or  not v2338.Parent or (v2338.Humanoid.Health<=0)  
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
else 
if (KillMob==0) then 
end 
local v2590=game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
if  not string.find(v2590,"Cookie Crafter") then CakeBring=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) then CakeBring=false;
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v2036.Position).Magnitude>3500) then BTP(v2036);
else topos(v2036);
end else topos(v2036);
end 
if ((v2036.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CakeQuest1",1);
end elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) then 
if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then 
for v3045,v3046 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3046:FindFirstChild("HumanoidRootPart") and v3046:FindFirstChild("Humanoid") and (v3046.Humanoid.Health>0)) then 
if ((v3046.Name=="Cookie Crafter") or (v3046.Name=="Cake Guard") or (v3046.Name=="Baking Staff") or (v3046.Name=="Head Baker")) then 
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Cookie Crafter") then 
repeat wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
PosMonCake=v3046.HumanoidRootPart.CFrame;
topos(v3046.HumanoidRootPart.CFrame * Pos );
v3046.HumanoidRootPart.CanCollide=false;
v3046.Humanoid.WalkSpeed=0;
v3046.Head.CanCollide=false;
CakeBring=true;
PosMonDoughtOpenDoor=v3046.HumanoidRootPart.CFrame;
until  not _G.DoughtBoss or  not v3046.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) or (v3046.Humanoid.Health<=0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob==0)  else CakeBring=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
end 
end 
end else CakeBring=false;
if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15,10,2) );
end 
end 
end 
end 
end);
end 
end 
end);
v54:Toggle("Tự Động Triệu Hồi Tư Lệnh",false,
function(v419) game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",value);
end);
v54:Toggle("Vua bột tự động",_G.doughking,
function(v420) _G.doughking=v420;
StopTween(_G.doughking);
end);
v54:Toggle("Vua bột tự động Đổi Sever",_G.doughkingHop,
function(v421) _G.doughkingHop=v421;
end);
spawn(
function() 
while wait() 
do 
if (_G.doughking and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then 
for v2339,v2340 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2340.Name=="Dough King") then 
if (v2340:FindFirstChild("Humanoid") and v2340:FindFirstChild("HumanoidRootPart") and (v2340.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2340.HumanoidRootPart.CanCollide=false;
v2340.Humanoid.WalkSpeed=0;
v2340.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2340.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.doughking or  not v2340.Parent or (v2340.Humanoid.Health<=0)  
end 
end 
end else UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -2662.818603515625,1062.3480224609375, -11853.6953125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.doughkingHop then Hop();
end 
end 
end);
end 
end 
end);
v54:Seperator("Quan sát");
v54:Toggle("Cày Điểm Haki Quan Sát",_G.Observation,
function(v422) _G.Observation=v422;
StopTween(_G.Observation);
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.Observation then 
repeat task.wait();
if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):SetKeyDown("0x65");
wait(2);
game:GetService("VirtualUser"):SetKeyUp("0x65");
end 
until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation  
end 
end);
end 
end);
v54:Toggle("Cày Điểm Haki Đổi Sever",_G.Observation_Hop,
function(v423) _G.Observation_Hop=v423;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Observation then 
if (game:GetService("Players").LocalPlayer.VisionRadius.Value>=3000) then wait(2);
elseif World2 then 
if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then 
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0) ;
until (_G.Observation==false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  else 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=(game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)) + wait(1) ;
if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop==true)) then game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer);
end 
until (_G.Observation==false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  
end else topos(CFrame.new( -5478.39209,15.9775667, -5246.9126));
end elseif World1 then 
if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then 
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0) ;
until (_G.Observation==false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  else 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0) ;
wait(1);
if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop==true)) then game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer);
end 
until (_G.Observation==false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  
end else topos(CFrame.new(5533.29785,88.1079102,4852.3916));
end elseif World3 then 
if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then 
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0) ;
until (_G.Observation==false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  else 
repeat task.wait();
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0) ;
wait(1);
if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop==true)) then game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer);
end 
until (_G.Observation==false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")  
end else topos(CFrame.new(4530.3540039063,656.75695800781, -131.60952758789));
end 
end 
end 
end 
end);
end);
v54:Seperator("Trùm");
local v79=v54:Label("Trạng thái : Chọn Trùm");
spawn(
function() 
while wait() 
do pcall(
function() 
if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then v79:Set("Trạng thái : Có");
else v79:Set("Trạng thái : Không");
end 
end);
end 
end);
if World1 then v54:Dropdown("Chọn Trùm",{"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"},
function(v1769) _G.SelectBoss=v1769;
end);
end 
if World2 then v54:Dropdown("Chọn Trùm",{"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"},
function(v1770) _G.SelectBoss=v1770;
end);
end 
if World3 then v54:Dropdown("Chọn Trùm",{"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"},
function(v1771) _G.SelectBoss=v1771;
end);
end v54:Toggle("Đánh Trùm Đã Chọn",_G.FarmBoss,
function(v424) game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
_G.FarmBoss=v424;
StopTween(_G.FarmBoss);
end);
spawn(
function() 
while wait() 
do 
if (_G.FarmBoss and BypassTP) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then 
for v2341,v2342 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2342.Name==_G.SelectBoss) then 
if (v2342:FindFirstChild("Humanoid") and v2342:FindFirstChild("HumanoidRootPart") and (v2342.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2342.HumanoidRootPart.CanCollide=false;
v2342.Humanoid.WalkSpeed=0;
v2342.HumanoidRootPart.Size=Vector3.new(80,80,80);
topos(v2342.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until  not _G.FarmBoss or  not v2342.Parent or (v2342.Humanoid.Health<=0)  
end 
end 
end elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then 
if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=1500) then topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
else BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
end 
end 
end);
end 
end 
end);
spawn(
function() 
while wait() 
do 
if (_G.FarmBoss and  not BypassTP) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then 
for v2343,v2344 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2344.Name==_G.SelectBoss) then 
if (v2344:FindFirstChild("Humanoid") and v2344:FindFirstChild("HumanoidRootPart") and (v2344.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2344.HumanoidRootPart.CanCollide=false;
v2344.Humanoid.WalkSpeed=0;
v2344.HumanoidRootPart.Size=Vector3.new(80,80,80);
topos(v2344.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until  not _G.FarmBoss or  not v2344.Parent or (v2344.Humanoid.Health<=0)  
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7) );
end 
end);
end 
end 
end);
v54:Toggle("Đánh Tất Cả Trùm",_G.AllBoss,
function(v425) _G.AllBoss=v425;
StopTween(_G.AllBoss);
end);
v54:Toggle("Đánh Tất Cả Trùm Đổi sever",_G.AllBossHop,
function(v426) _G.AllBossHop=v426;
end);
spawn(
function() 
while wait() 
do 
if _G.AllBoss then pcall(
function() 
for v2099,v2100 in pairs(game.ReplicatedStorage:GetChildren()) 
do 
if ((v2100.Name=="rip_indra") or (v2100.Name=="Ice Admiral") or (v2100.Name=="Saber Expert") or (v2100.Name=="The Saw") or (v2100.Name=="Greybeard") or (v2100.Name=="Mob Leader") or (v2100.Name=="The Gorilla King") or (v2100.Name=="Bobby") or (v2100.Name=="Yeti") or (v2100.Name=="Vice Admiral") or (v2100.Name=="Warden") or (v2100.Name=="Chief Warden") or (v2100.Name=="Swan") or (v2100.Name=="Magma Admiral") or (v2100.Name=="Fishman Lord") or (v2100.Name=="Wysper") or (v2100.Name=="Thunder God") or (v2100.Name=="Cyborg") or (v2100.Name=="Don Swan") or (v2100.Name=="Diamond") or (v2100.Name=="Jeremy") or (v2100.Name=="Fajita") or (v2100.Name=="Smoke Admiral") or (v2100.Name=="Awakened Ice Admiral") or (v2100.Name=="Tide Keeper") or (v2100.Name=="Order") or (v2100.Name=="Darkbeard") or (v2100.Name=="Stone") or (v2100.Name=="Island Empress") or (v2100.Name=="Kilo Admiral") or (v2100.Name=="Captain Elephant") or (v2100.Name=="Beautiful Pirate") or (v2100.Name=="Cake Queen") or (v2100.Name=="rip_indra True Form") or (v2100.Name=="Longma") or (v2100.Name=="Soul Reaper") or (v2100.Name=="Cake Prince") or (v2100.Name=="Dough King")) then 
if ((v2100.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<17000) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2100.Humanoid.WalkSpeed=0;
v2100.HumanoidRootPart.CanCollide=false;
v2100.Head.CanCollide=false;
v2100.HumanoidRootPart.Size=Vector3.new(80,80,80);
topos(v2100.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until (v2100.Humanoid.Health<=0) or (_G.AllBoss==false) or  not v2100.Parent  
end elseif _G.AllBossHop then Hop();
end 
end 
end);
end 
end 
end);
v55:Seperator("Cày Đặt");
v55:Toggle("Duy Chuyển Dạng Reset",BypassTP,
function(v427) BypassTP=v427;
end);
v55:Seperator("Bay");
local v80={"100","150","250","300","325","350"};
getgenv().TweenSpeed="325";
v55:Dropdown("Tốc Độ Bay",v80,
function(v428) getgenv().TweenSpeed=v428;
end);
v55:Button("Dừng Bay",
function() topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
_G.Clip=false;
end);
v55:Toggle("Gôm Quái",true,
function(v430) _G.BringMonster=v430;
end);
spawn(
function() 
while task.wait() 
do pcall(
function() 
if _G.BringMonster then CheckQuest();
for v2101,v2102 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (_G.Level and StartMagnet and (v2102.Name==Mon) and ((Mon=="Factory Staff [Lv. 800]") or (Mon=="Monkey [Lv. 14]") or (Mon=="Dragon Crew Warrior [Lv. 1575]") or (Mon=="Dragon Crew Archer [Lv. 1600]")) and v2102:FindFirstChild("Humanoid") and v2102:FindFirstChild("HumanoidRootPart") and (v2102.Humanoid.Health>0) and ((v2102.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=220)) then v2102.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2102.HumanoidRootPart.CFrame=PosMon;
v2102.Humanoid:ChangeState(14);
v2102.HumanoidRootPart.CanCollide=false;
v2102.Head.CanCollide=false;
if v2102.Humanoid:FindFirstChild("Animator") then v2102.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
elseif (_G.Level and StartMagnet and (v2102.Name==Mon) and v2102:FindFirstChild("Humanoid") and v2102:FindFirstChild("HumanoidRootPart") and (v2102.Humanoid.Health>0) and ((v2102.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode)) then v2102.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2102.HumanoidRootPart.CFrame=PosMon;
v2102.Humanoid:ChangeState(14);
v2102.HumanoidRootPart.CanCollide=false;
v2102.Head.CanCollide=false;
if v2102.Humanoid:FindFirstChild("Animator") then v2102.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end 
end);
end 
end);
local v82={"Ít","Vừa","Nhiều"};
_G.BringMode="Ít";
v55:Dropdown("Chế Độ Gôm Quái",v82,
function(v431) _G.BringMode=v431;
end);
spawn(
function() 
while wait(0.1) 
do 
if _G.BringMode then pcall(
function() 
if (_G.BringMode=="Ít") then _G.BringMode=250;
elseif (_G.BringMode=="Vừa") then _G.BringMode=300;
elseif (_G.BringMode=="Nhiều") then _G.BringMode=350;
end 
end);
end 
end 
end);
v55:Toggle("Tự Động Mở Haki",true,
function(v432) _G.Haki=v432;
end);
spawn(
function() 
while wait(0.1) 
do 
if _G.Haki then 
if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then 
local v2103={[1]="Buso"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2103));
end 
end 
end 
end);
v55:Toggle("Tự Động Nhấp chuột",false,
function(v433) _G.Click=v433;
end);
v55:Toggle("Tắt Thông Báo",false,
function(v434) _G.Remove_trct=v434;
end);
spawn(
function() 
while wait() 
do 
if _G.Remove_trct then game.Players.LocalPlayer.PlayerGui.Notifications.Enabled=false;
else game.Players.LocalPlayer.PlayerGui.Notifications.Enabled=true;
end 
end 
end);
v55:Toggle("Tắt Dame",true,
function(v435) _G.KobenHeegeen=v435;
end);
spawn(
function() 
while wait() 
do 
if _G.KobenHeegeen then game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled=false;
else game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled=true;
end 
end 
end);
spawn(
function() 
while wait() 
do 
if _G.WhiteScreen then 
for v2037,v2038 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) 
do 
if ((v2038.Name=="CurvedRing") or (v2038.Name=="SlashHit") or (v2038.Name=="DamageCounter") or (v2038.Name=="SwordSlash") or (v2038.Name=="SlashTail") or (v2038.Name=="Sounds")) then v2038:Destroy();
end 
end 
end 
end 
end);
v55:Toggle("Màng Hình Trắng",_G.WhiteScreen,
function(v436) _G.WhiteScreen=v436;
if (_G.WhiteScreen==true) then game:GetService("RunService"):Set3dRenderingEnabled(false);
elseif (_G.WhiteScreen==false) then game:GetService("RunService"):Set3dRenderingEnabled(true);
end 
end);
v55:Toggle("Ẩn Quái",_G.inv,
function(v437) _G.inv=v437;
while wait() 
do 
if _G.inv then pcall(
function() 
for v2104,v2105 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) 
do 
if (v2105.ClassName=="MeshPart") then v2105.Transparency=1;
end 
end 
for v2106,v2107 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) 
do 
if (v2107.Name=="Head") then v2107.Transparency=1;
end 
end 
for v2108,v2109 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) 
do 
if (v2109.ClassName=="Accessory") then v2109.Handle.Transparency=1;
end 
end 
for v2110,v2111 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) 
do 
if (v2111.ClassName=="Decal") then v2111.Transparency=1;
end 
end 
end);
end 
end 
end);
v55:Seperator("Cày Đặt Cày Thông Thạo");
v55:Toggle("Kỹ năng Z",true,
function(v438) _G.SkillZ=v438;
end);
v55:Toggle("Kỹ năng X",true,
function(v439) _G.SkillX=v439;
end);
v55:Toggle("Kỹ năng C",true,
function(v440) _G.SkillC=v440;
end);
v55:Toggle("Kỹ năng V",true,
function(v441) _G.SkillV=v441;
end);
if (World1 or World2) then v56:Seperator("World");
end 
if World1 then v56:Toggle("Tự Động Qua Biển 2",_G.SecondSea,
function(v1772) _G.SecondSea=v1772;
StopTween(_G.SecondSea);
end);
spawn(
function() 
while wait() 
do 
if _G.SecondSea then pcall(
function() 
local v2171=game:GetService("Players").LocalPlayer.Data.Level.Value;
if ((v2171>=700) and World1) then 
if ((game:GetService("Workspace").Map.Ice.Door.CanCollide==false) and (game:GetService("Workspace").Map.Ice.Door.Transparency==1)) then 
local v2801=CFrame.new(4849.29883,5.65138149,719.611877);
repeat topos(v2801);
wait();
until ((v2801.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3) or (_G.SecondSea==false)  wait(1.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective");
wait(0.5);
EquipWeapon("Key");
repeat topos(CFrame.new(1347.7124,37.3751602, -1325.6488));
wait();
until ((Vector3.new(1347.7124,37.3751602, -1325.6488) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3) or (_G.SecondSea==false)  wait(0.5);
elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide==false) and (game:GetService("Workspace").Map.Ice.Door.Transparency==1)) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then 
for v3049,v3050 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3050.Name=="Ice Admiral") then 
if ( not v3050.Humanoid.Health<=0) then 
if (v3050:FindFirstChild("Humanoid") and v3050:FindFirstChild("HumanoidRootPart") and (v3050.Humanoid.Health>0)) then OldCFrameSecond=v3050.HumanoidRootPart.CFrame;
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v3050.HumanoidRootPart.CanCollide=false;
v3050.Humanoid.WalkSpeed=0;
v3050.Head.CanCollide=false;
v3050.HumanoidRootPart.Size=Vector3.new(50,50,50);
v3050.HumanoidRootPart.CFrame=OldCFrameSecond;
topos(v3050.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until  not _G.SecondSea or  not v3050.Parent or (v3050.Humanoid.Health<=0)  
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,7) );
end 
end 
end 
end);
end 
end 
end);
end 
if World2 then v56:Toggle("Tự Động Qua Biển 3",_G.ThirdSea,
function(v1773) _G.ThirdSea=v1773;
StopTween(_G.ThirdSea);
end);
spawn(
function() 
while wait() 
do 
if _G.ThirdSea then pcall(
function() 
if ((game:GetService("Players").LocalPlayer.Data.Level.Value>=1500) and World2) then _G.Level=false;
if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress","General")==0) then topos(CFrame.new( -1926.3221435547,12.819851875305,1738.3092041016));
if ((CFrame.new( -1926.3221435547,12.819851875305,1738.3092041016).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=10) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin");
end wait(1.8);
if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then 
for v2930,v2931 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2931.Name=="rip_indra") then OldCFrameThird=v2931.HumanoidRootPart.CFrame;
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
topos(v2931.HumanoidRootPart.CFrame * Pos );
v2931.HumanoidRootPart.CFrame=OldCFrameThird;
v2931.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2931.HumanoidRootPart.CanCollide=false;
v2931.Humanoid.WalkSpeed=0;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.ThirdSea==false) or (v2931.Humanoid.Health<=0) or  not v2931.Parent  
end 
end elseif ( not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new( -26880.93359375,22.848554611206,473.18951416016).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=1000)) then topos(CFrame.new( -26880.93359375,22.848554611206,473.18951416016));
end 
end 
end 
end);
end 
end 
end);
end 
if World2 then v56:Toggle("Đánh Nhà Máy",_G.Factory,
function(v1774) _G.Factory=v1774;
StopTween(_G.Factory);
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.Factory then 
if game:GetService("Workspace").Enemies:FindFirstChild("Core") then 
for v2634,v2635 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2635.Name=="Core") and (v2635.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
topos(CFrame.new(448.46756,199.356781, -441.389252));
until (v2635.Humanoid.Health<=0) or (_G.Factory==false)  
end 
end else topos(CFrame.new(448.46756,199.356781, -441.389252));
end 
end 
end);
end 
end);
end v56:Seperator("Võ");
v56:Toggle("Tự Động Superhuman",_G.Superhuman,
function(v442) _G.Superhuman=v442;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Superhuman then 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=150000))) then UnEquipWeapon("Combat");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end 
if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then _G.SelectWeapon="Superhuman";
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value<=299)) then _G.SelectWeapon="Black Leg";
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value<=299)) then _G.SelectWeapon="Electro";
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value<=299)) then _G.SelectWeapon="Fishman Karate";
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value<=299)) then _G.SelectWeapon="Dragon Claw";
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=300000)) then UnEquipWeapon("Black Leg");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end 
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=300000)) then UnEquipWeapon("Black Leg");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=750000)) then UnEquipWeapon("Electro");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end 
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=750000)) then UnEquipWeapon("Electro");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value>=300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value>=1500)) then UnEquipWeapon("Fishman Karate");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2");
end 
if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value>=300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value>=1500)) then UnEquipWeapon("Fishman Karate");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2");
end 
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=3000000)) then UnEquipWeapon("Dragon Claw");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end 
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value>=300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value>=3000000)) then UnEquipWeapon("Dragon Claw");
wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end 
end 
end 
end 
end);
end);
v56:Toggle("Tự Động Chân Đen",_G.DeathStep,
function(v443) _G.DeathStep=v443;
end);
spawn(
function() 
while wait() 
do wait();
if _G.DeathStep then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value>=450)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
_G.SelectWeapon="Death Step";
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=450)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
_G.SelectWeapon="Death Step";
end 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value<=449)) then _G.SelectWeapon="Black Leg";
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end 
end 
end 
end);
v56:Toggle("Tự Động Võ Người Cá",_G.Sharkman,
function(v444) _G.Sharkman=v444;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Sharkman then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"),"keys") then 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then topos(CFrame.new( -2604.6958,239.432526, -10315.1982,0.0425701365,0, -0.999093413,0,1,0,0.999093413,0,0.0425701365));
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value>=400)) then else Ms="Tide Keeper";
if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then 
for v2932,v2933 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2933.Name==Ms) then OldCFrameShark=v2933.HumanoidRootPart.CFrame;
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2933.Head.CanCollide=false;
v2933.Humanoid.WalkSpeed=0;
v2933.HumanoidRootPart.CanCollide=false;
v2933.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2933.HumanoidRootPart.CFrame=OldCFrameShark;
topos(v2933.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until  not v2933.Parent or (v2933.Humanoid.Health<=0) or (_G.Sharkman==false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")  
end 
end else topos(CFrame.new( -3570.18652,123.328949, -11555.9072,0.465199202, -1.3857326e-8,0.885206044,4.0332897e-9,1,1.3534751e-8, -0.885206044, -2.7260627e-9,0.465199202));
wait(3);
end 
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end 
end 
end 
end);
end);
v56:Toggle("Tự Động Võ Điện",_G.ElectricClaw,
function(v445) _G.ElectricClaw=v445;
StopTween(_G.ElectricClaw);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.ElectricClaw then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value>=400)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
_G.SelectWeapon="Electric Claw";
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value>=400)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
_G.SelectWeapon="Electric Claw";
end 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value<=399)) then _G.SelectWeapon="Electro";
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end 
end 
if _G.ElectricClaw then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value>=400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value>=400)) then 
if (_G.Level==false) then 
repeat task.wait();
topos(CFrame.new( -10371.4717,330.764496, -10131.4199));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -10371.4717,330.764496, -10131.4199).Position).Magnitude<=10)  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start");
wait(2);
repeat task.wait();
topos(CFrame.new( -12550.532226563,336.22631835938, -7510.4233398438));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -12550.532226563,336.22631835938, -7510.4233398438).Position).Magnitude<=10)  wait(1);
repeat task.wait();
topos(CFrame.new( -10371.4717,330.764496, -10131.4199));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -10371.4717,330.764496, -10131.4199).Position).Magnitude<=10)  wait(1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
elseif (_G.Level==true) then _G.Level=false;
wait(1);
repeat task.wait();
topos(CFrame.new( -10371.4717,330.764496, -10131.4199));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -10371.4717,330.764496, -10131.4199).Position).Magnitude<=10)  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start");
wait(2);
repeat task.wait();
topos(CFrame.new( -12550.532226563,336.22631835938, -7510.4233398438));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -12550.532226563,336.22631835938, -7510.4233398438).Position).Magnitude<=10)  wait(1);
repeat task.wait();
topos(CFrame.new( -10371.4717,330.764496, -10131.4199));
until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new( -10371.4717,330.764496, -10131.4199).Position).Magnitude<=10)  wait(1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
_G.SelectWeapon="Electric Claw";
wait(0.1);
_G.Level=true;
end 
end 
end 
end 
end 
end);
end);
v56:Toggle("Tự Động Võ Rồng",_G.DragonTalon,
function(v446) _G.DragonTalon=v446;
end);
spawn(
function() 
while wait() 
do 
if _G.DragonTalon then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value>=400)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
_G.SelectWeapon="Dragon Talon";
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value>=400)) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
_G.SelectWeapon="Dragon Talon";
end 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value<=399)) then _G.SelectWeapon="Dragon Claw";
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2");
end 
end 
end 
end);
v56:Toggle("Tự Động GodHuman",_G.God_Human,
function(v447) _G.God_Human=v447;
end);
spawn(
function() 
while task.wait() 
do 
if _G.God_Human then pcall(
function() 
if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)==1) then 
if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value>=400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value>=400))) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end else 
end 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)==1) then 
if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value>=400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value>=400))) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end else 
end 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)==1) then 
if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value>=400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value>=400))) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end else 
end 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)==1) then 
if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value>=400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value>=400))) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end else 
end 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)==1) then 
if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value>=400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value>=400))) then 
if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true),"Bring") then else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end 
end else 
end else game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end 
end);
end 
end 
end);
v56:Seperator("Nguyên Liệu");
if World2 then v56:Toggle("Cày Vật Chất Phóng Xạ",false,
function(v1775) Radioactive=v1775;
StopTween(Radioactive);
end);
local v864=CFrame.new( -507.7895202636719,72.99479675292969, -126.45632934570312);
spawn(
function() 
while wait() 
do 
if (Radioactive and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then 
for v2636,v2637 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2637.Name=="Factory Staff") then 
if (v2637:FindFirstChild("Humanoid") and v2637:FindFirstChild("HumanoidRootPart") and (v2637.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2637.HumanoidRootPart.CanCollide=false;
v2637.Humanoid.WalkSpeed=0;
v2637.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2637.HumanoidRootPart.CFrame;
topos(v2637.HumanoidRootPart.CFrame * Pos );
until  not Radioactive or  not v2637.Parent or (v2637.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v864.Position).Magnitude>3500) then BTP(v864);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v864.Position).Magnitude<3500) then topos(v864);
end else topos(v864);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -507.7895202636719,72.99479675292969, -126.45632934570312));
if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World2 then v56:Toggle("Cày Giọt Nước Huyền Bí",false,
function(v1776) _G.Makori_gay=v1776;
StopTween(_G.Makori_gay);
end);
local v865=CFrame.new( -3352.9013671875,285.01556396484375, -10534.841796875);
spawn(
function() 
while wait() 
do 
if (_G.Makori_gay and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then 
for v2638,v2639 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2639.Name=="Water Fighter") then 
if (v2639:FindFirstChild("Humanoid") and v2639:FindFirstChild("HumanoidRootPart") and (v2639.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2639.HumanoidRootPart.CanCollide=false;
v2639.Humanoid.WalkSpeed=0;
v2639.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2639.HumanoidRootPart.CFrame;
topos(v2639.HumanoidRootPart.CFrame * Pos );
until  not _G.Makori_gay or  not v2639.Parent or (v2639.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v865.Position).Magnitude>3500) then BTP(v865);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v865.Position).Magnitude<3500) then topos(v865);
end else topos(v865);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -3352.9013671875,285.01556396484375, -10534.841796875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if (World1 or World2) then v56:Toggle("Cày Quặng Nham Thạch",_G.Makori_gay,
function(v1777) _G.Umm=v1777;
StopTween(_G.Umm);
end);
local v866=CFrame.new( -5850.2802734375,77.28675079345703,8848.6748046875);
spawn(
function() 
while wait() 
do 
if (_G.Umm and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then 
for v2640,v2641 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2641.Name=="Military Spy") then 
if (v2641:FindFirstChild("Humanoid") and v2641:FindFirstChild("HumanoidRootPart") and (v2641.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2641.HumanoidRootPart.CanCollide=false;
v2641.Humanoid.WalkSpeed=0;
v2641.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2641.HumanoidRootPart.CFrame;
topos(v2641.HumanoidRootPart.CFrame * Pos );
until  not _G.Umm or  not v2641.Parent or (v2641.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v866.Position).Magnitude>3500) then BTP(v866);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v866.Position).Magnitude<3500) then topos(v866);
end else topos(v866);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -5850.2802734375,77.28675079345703,8848.6748046875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
local v867=CFrame.new( -5234.60595703125,51.953372955322266, -4732.27880859375);
spawn(
function() 
while wait() 
do 
if (_G.Umm and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then 
for v2642,v2643 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2643.Name=="Lava Pirate") then 
if (v2643:FindFirstChild("Humanoid") and v2643:FindFirstChild("HumanoidRootPart") and (v2643.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2643.HumanoidRootPart.CanCollide=false;
v2643.Humanoid.WalkSpeed=0;
v2643.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2643.HumanoidRootPart.CFrame;
topos(v2643.HumanoidRootPart.CFrame * Pos );
until  not _G.Umm or  not v2643.Parent or (v2643.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v867.Position).Magnitude>3500) then BTP(v867);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v867.Position).Magnitude<3500) then topos(v867);
end else topos(v867);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -5234.60595703125,51.953372955322266, -4732.27880859375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World1 then v56:Toggle("Cày Đôi cánh thiên thần",_G.Makori_gay,
function(v1778) _G.Wing=v1778;
StopTween(_G.Wing);
end);
local v868=CFrame.new( -7827.15625,5606.912109375, -1705.5833740234375);
spawn(
function() 
while wait() 
do 
if (_G.Wing and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then 
for v2644,v2645 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2645.Name=="Royal Soldier") then 
if (v2645:FindFirstChild("Humanoid") and v2645:FindFirstChild("HumanoidRootPart") and (v2645.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2645.HumanoidRootPart.CanCollide=false;
v2645.Humanoid.WalkSpeed=0;
v2645.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2645.HumanoidRootPart.CFrame;
topos(v2645.HumanoidRootPart.CFrame * Pos );
until  not _G.Wing or  not v2645.Parent or (v2645.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v868.Position).Magnitude>3500) then BTP(v868);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v868.Position).Magnitude<3500) then topos(v868);
end else topos(v868);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -7827.15625,5606.912109375, -1705.5833740234375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if (World1 or World2 or World3) then v56:Toggle("Cày Da",_G.Makori_gay,
function(v1779) _G.Leather=v1779;
StopTween(_G.Leather);
end);
local v869=CFrame.new( -1211.8792724609375,4.787090301513672,3916.83056640625);
spawn(
function() 
while wait() 
do 
if (_G.Leather and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then 
for v2646,v2647 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2647.Name=="Pirate") then 
if (v2647:FindFirstChild("Humanoid") and v2647:FindFirstChild("HumanoidRootPart") and (v2647.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2647.HumanoidRootPart.CanCollide=false;
v2647.Humanoid.WalkSpeed=0;
v2647.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2647.HumanoidRootPart.CFrame;
topos(v2647.HumanoidRootPart.CFrame * Pos );
until  not _G.Leather or  not v2647.Parent or (v2647.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v869.Position).Magnitude>3500) then BTP(v869);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v869.Position).Magnitude<3500) then topos(v869);
end else topos(v869);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -1211.8792724609375,4.787090301513672,3916.83056640625));
if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
local v870=CFrame.new( -2010.5059814453125,73.00115966796875, -3326.620849609375);
spawn(
function() 
while wait() 
do 
if (_G.Leather and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then 
for v2648,v2649 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2649.Name=="Marine Captain") then 
if (v2649:FindFirstChild("Humanoid") and v2649:FindFirstChild("HumanoidRootPart") and (v2649.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2649.HumanoidRootPart.CanCollide=false;
v2649.Humanoid.WalkSpeed=0;
v2649.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2649.HumanoidRootPart.CFrame;
topos(v2649.HumanoidRootPart.CFrame * Pos );
until  not _G.Leather or  not v2649.Parent or (v2649.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v870.Position).Magnitude>3500) then BTP(v870);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v870.Position).Magnitude<3500) then topos(v870);
end else topos(v870);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -2010.5059814453125,73.00115966796875, -3326.620849609375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
local v871=CFrame.new( -11975.78515625,331.7734069824219, -10620.0302734375);
spawn(
function() 
while wait() 
do 
if (_G.Leather and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then 
for v2650,v2651 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2651.Name=="Jungle Pirate") then 
if (v2651:FindFirstChild("Humanoid") and v2651:FindFirstChild("HumanoidRootPart") and (v2651.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2651.HumanoidRootPart.CanCollide=false;
v2651.Humanoid.WalkSpeed=0;
v2651.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2651.HumanoidRootPart.CFrame;
topos(v2651.HumanoidRootPart.CFrame * Pos );
until  not _G.Leather or  not v2651.Parent or (v2651.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v871.Position).Magnitude>3500) then BTP(v871);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v871.Position).Magnitude<3500) then topos(v871);
end else topos(v871);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -11975.78515625,331.7734069824219, -10620.0302734375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if (World1 or world2 or World3) then v56:Toggle("Cày Kim loại phế liệu",false,
function(v1780) Scrap=v1780;
StopTween(Scrap);
end);
local v872=CFrame.new( -1132.4202880859375,14.844913482666016,4293.30517578125);
spawn(
function() 
while wait() 
do 
if (Scrap and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then 
for v2652,v2653 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2653.Name=="Brute") then 
if (v2653:FindFirstChild("Humanoid") and v2653:FindFirstChild("HumanoidRootPart") and (v2653.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2653.HumanoidRootPart.CanCollide=false;
v2653.Humanoid.WalkSpeed=0;
v2653.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2653.HumanoidRootPart.CFrame;
topos(v2653.HumanoidRootPart.CFrame * Pos );
until  not Scrap or  not v2653.Parent or (v2653.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v872.Position).Magnitude>3500) then BTP(v872);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v872.Position).Magnitude<3500) then topos(v872);
end else topos(v872);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -1132.4202880859375,14.844913482666016,4293.30517578125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
local v873=CFrame.new( -972.307373046875,73.04473876953125,1419.2901611328125);
spawn(
function() 
while wait() 
do 
if (Scrap and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then 
for v2654,v2655 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2655.Name=="Mercenary") then 
if (v2655:FindFirstChild("Humanoid") and v2655:FindFirstChild("HumanoidRootPart") and (v2655.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2655.HumanoidRootPart.CanCollide=false;
v2655.Humanoid.WalkSpeed=0;
v2655.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2655.HumanoidRootPart.CFrame;
topos(v2655.HumanoidRootPart.CFrame * Pos );
until  not Scrap or  not v2655.Parent or (v2655.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v873.Position).Magnitude>3500) then BTP(v873);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v873.Position).Magnitude<3500) then topos(v873);
end else topos(v873);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -972.307373046875,73.04473876953125,1419.2901611328125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
local v874=CFrame.new( -289.6311950683594,43.8282470703125,5583.66357421875);
spawn(
function() 
while wait() 
do 
if (Scrap and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then 
for v2656,v2657 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2657.Name=="Pirate Millionaire") then 
if (v2657:FindFirstChild("Humanoid") and v2657:FindFirstChild("HumanoidRootPart") and (v2657.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2657.HumanoidRootPart.CanCollide=false;
v2657.Humanoid.WalkSpeed=0;
v2657.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2657.HumanoidRootPart.CFrame;
topos(v2657.HumanoidRootPart.CFrame * Pos );
until  not Scrap or  not v2657.Parent or (v2657.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v874.Position).Magnitude>3500) then BTP(v874);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v874.Position).Magnitude<3500) then topos(v874);
end else topos(v874);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -289.6311950683594,43.8282470703125,5583.66357421875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World3 then v56:Toggle("Cày Bột Ca cao",false,
function(v1781) Cocoafarm=v1781;
StopTween(Cocoafarm);
end);
local v875=CFrame.new(744.7930908203125,24.76934242248535, -12637.7255859375);
spawn(
function() 
while wait() 
do 
if (Cocoafarm and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then 
for v2658,v2659 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2659.Name=="Chocolate Bar Battler") then 
if (v2659:FindFirstChild("Humanoid") and v2659:FindFirstChild("HumanoidRootPart") and (v2659.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2659.HumanoidRootPart.CanCollide=false;
v2659.Humanoid.WalkSpeed=0;
v2659.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2659.HumanoidRootPart.CFrame;
topos(v2659.HumanoidRootPart.CFrame * Pos );
until  not Cocoafarm or  not v2659.Parent or (v2659.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v875.Position).Magnitude>3500) then BTP(v875);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v875.Position).Magnitude<3500) then topos(v875);
end else topos(v875);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new(744.7930908203125,24.76934242248535, -12637.7255859375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World3 then v56:Toggle("Cày Vảy Rồng",false,
function(v1782) Dragon_Scale=v1782;
StopTween(Dragon_Scale);
end);
local v876=CFrame.new(6752,565,315);
spawn(
function() 
while wait() 
do 
if (Dragon_Scale and World3) then pcall(
function() 
if (game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior")) then 
for v2660,v2661 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2661.Name=="Dragon Crew Archer") or (v2661.Name=="Dragon Crew Warrior")) then 
if (v2661:FindFirstChild("Humanoid") and v2661:FindFirstChild("HumanoidRootPart") and (v2661.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2661.HumanoidRootPart.CanCollide=false;
v2661.Humanoid.WalkSpeed=0;
v2661.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2661.HumanoidRootPart.CFrame;
topos(v2661.HumanoidRootPart.CFrame * Pos );
until  not Dragon_Scale or  not v2661.Parent or (v2661.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v876.Position).Magnitude>3500) then BTP(v876);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v876.Position).Magnitude<3500) then topos(v876);
end else topos(v876);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new(6752,565,315));
if (game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") or game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior")) then 
if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
end elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World3 then v56:Toggle("Cày Thuốc Súng",false,
function(v1783) Gunpowder=v1783;
StopTween(Gunpowder);
end);
local v877=CFrame.new( -379.6134338378906,73.84449768066406,5928.5263671875);
spawn(
function() 
while wait() 
do 
if (Gunpowder and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then 
for v2662,v2663 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2663.Name=="Pistol Billionaire") then 
if (v2663:FindFirstChild("Humanoid") and v2663:FindFirstChild("HumanoidRootPart") and (v2663.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2663.HumanoidRootPart.CanCollide=false;
v2663.Humanoid.WalkSpeed=0;
v2663.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2663.HumanoidRootPart.CFrame;
topos(v2663.HumanoidRootPart.CFrame * Pos );
until  not Gunpowder or  not v2663.Parent or (v2663.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v877.Position).Magnitude>3500) then BTP(v877);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v877.Position).Magnitude<3500) then topos(v877);
end else topos(v877);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -379.6134338378906,73.84449768066406,5928.5263671875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World3 then v56:Toggle("Cày Đuôi Cá",false,
function(v1784) Fish=v1784;
StopTween(Fish);
end);
local v878=CFrame.new( -10961.0126953125,331.7977600097656, -8914.29296875);
spawn(
function() 
while wait() 
do 
if (Fish and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then 
for v2664,v2665 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2665.Name=="Fishman Captain") then 
if (v2665:FindFirstChild("Humanoid") and v2665:FindFirstChild("HumanoidRootPart") and (v2665.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2665.HumanoidRootPart.CanCollide=false;
v2665.Humanoid.WalkSpeed=0;
v2665.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2665.HumanoidRootPart.CFrame;
topos(v2665.HumanoidRootPart.CFrame * Pos );
until  not Fish or  not v2665.Parent or (v2665.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v878.Position).Magnitude>3500) then BTP(v878);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v878.Position).Magnitude<3500) then topos(v878);
end else topos(v878);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -10961.0126953125,331.7977600097656, -8914.29296875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end 
if World3 then v56:Toggle("Cày Sừng Tê Giác",false,
function(v1785) MiniHee=v1785;
StopTween(MiniHee);
end);
local v879=CFrame.new( -13516.0458984375,469.8182373046875, -6899.16064453125);
spawn(
function() 
while wait() 
do 
if (MiniHee and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then 
for v2666,v2667 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2667.Name=="Mythological Pirate") then 
if (v2667:FindFirstChild("Humanoid") and v2667:FindFirstChild("HumanoidRootPart") and (v2667.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2667.HumanoidRootPart.CanCollide=false;
v2667.Humanoid.WalkSpeed=0;
v2667.Head.CanCollide=false;
MakoriGayMag=true;
PosGay=v2667.HumanoidRootPart.CFrame;
topos(v2667.HumanoidRootPart.CFrame * Pos );
until  not MiniHee or  not v2667.Parent or (v2667.Humanoid.Health<=0)  MakoriGayMag=false;
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v879.Position).Magnitude>3500) then BTP(v879);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v879.Position).Magnitude<3500) then topos(v879);
end else topos(v879);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -13516.0458984375,469.8182373046875, -6899.16064453125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.StardHop then Hop();
end 
end 
end);
end 
end 
end);
end v56:Seperator("nâng cao");
v56:Toggle("Tự động đột kích Phoenix",_G.AdvanceDungeon,
function(v448) _G.AdvanceDungeon=v448;
StopTween(_G.AdvanceDungeon);
end);
spawn(
function() 
while wait() 
do 
if _G.AdvanceDungeon then pcall(
function() 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then 
if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then 
if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value>=400) then topos(CFrame.new( -2812.76708984375,254.803466796875, -12595.560546875));
if ((CFrame.new( -2812.76708984375,254.803466796875, -12595.560546875).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=10) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal");
end 
end elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then 
if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value>=400) then topos(CFrame.new( -2812.76708984375,254.803466796875, -12595.560546875));
if ((CFrame.new( -2812.76708984375,254.803466796875, -12595.560546875).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=10) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal");
end 
end 
end 
end 
end);
end 
end 
end);
v56:Label("Biển 1");
v56:Seperator("Saw");
v56:Toggle("Đánh Sharks saw",_G.doughking,
function(v449) _G.saw=v449;
StopTween(_G.saw);
end);
v56:Toggle("Đánh Shark Saw Đổi Sever",_G.doughkingHop,
function(v450) _G.sawhop=v450;
end);
local v83=CFrame.new( -690.33081054688,15.09425163269,1582.2380371094);
spawn(
function() 
while wait() 
do 
if (_G.saw and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then 
for v2353,v2354 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2354.Name=="The Saw") then 
if (v2354:FindFirstChild("Humanoid") and v2354:FindFirstChild("HumanoidRootPart") and (v2354.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2354.HumanoidRootPart.CanCollide=false;
v2354.Humanoid.WalkSpeed=0;
v2354.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2354.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.saw or  not v2354.Parent or (v2354.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v83.Position).Magnitude>3500) then BTP(v83);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v83.Position).Magnitude<3500) then topos(v83);
end else topos(v83);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -690.33081054688,15.09425163269,1582.2380371094));
if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2,40,2) );
elseif _G.sawhop then Hop();
end 
end 
end);
end 
end 
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then Hop();
end 
end 
end);
end);
v56:Seperator("Thanh kiếm Waden");
v56:Toggle("Lấy kiếm Waden",_G.waden,
function(v451) _G.waden=v451;
StopTween(_G.waden);
end);
v56:Toggle("kiếm Waden Đổi Sever",_G.wadenhop,
function(v452) _G.wadenhop=v452;
end);
local v84=CFrame.new(5186.14697265625,24.86684226989746,832.1885375976562);
spawn(
function() 
while wait() 
do 
if (_G.waden and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then 
for v2355,v2356 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2356.Name=="Chief Warden") then 
if (v2356:FindFirstChild("Humanoid") and v2356:FindFirstChild("HumanoidRootPart") and (v2356.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2356.HumanoidRootPart.CanCollide=false;
v2356.Humanoid.WalkSpeed=0;
v2356.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2356.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.waden or  not v2356.Parent or (v2356.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-TridentPos.Position).Magnitude>3500) then BTP(TridentPos);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-TridentPos.Position).Magnitude<3500) then topos(TridentPos);
end else topos(TridentPos);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new(5186.14697265625,24.86684226989746,832.1885375976562));
if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.wadenhop then Hop();
end 
end 
end);
end 
end 
end);
v56:Seperator("Râu Xám");
v56:Toggle("Đánh Râu Xám",_G.doughking,
function(v453) _G.gay=v453;
StopTween(_G.gay);
end);
v56:Toggle("Đánh Râu Xám Đổi Sever",_G.doughkingHop,
function(v454) _G.gayhop=v454;
end);
local v85=CFrame.new( -5023.38330078125,28.65203285217285,4332.3818359375);
spawn(
function() 
while wait() 
do 
if (_G.gay and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then 
for v2357,v2358 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2358.Name=="Greybeard") then 
if (v2358:FindFirstChild("Humanoid") and v2358:FindFirstChild("HumanoidRootPart") and (v2358.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2358.HumanoidRootPart.CanCollide=false;
v2358.Humanoid.WalkSpeed=0;
v2358.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2358.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.gay or  not v2358.Parent or (v2358.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v85.Position).Magnitude>3500) then BTP(v85);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v85.Position).Magnitude<3500) then topos(v85);
end else topos(v85);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -5023.38330078125,28.65203285217285,4332.3818359375));
if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.gayhop then Hop();
end 
end 
end);
end 
end 
end);
v56:Seperator("Saber");
v56:Toggle("Tự Động Lấy Saber",_G.Saber,
function(v455) _G.Saber=v455;
StopTween(_G.Saber);
end);
v56:Toggle("Saber Đổi Sever",_G.SaberHop,
function(v456) _G.SaberHop=v456;
end);
spawn(
function() 
while task.wait() 
do 
if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value>=200)) then pcall(
function() 
if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency==0) then 
if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency==0) then 
if ((CFrame.new( -1612.55884,36.9774132,148.719543,0.37091279,3.071715e-9, -0.928667724,3.970995e-8,1,1.9167935e-8,0.928667724, -4.398698e-8,0.37091279).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=100) then topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
wait(1);
else topos(CFrame.new( -1612.55884,36.9774132,148.719543,0.37091279,3.071715e-9, -0.928667724,3.970995e-8,1,1.9167935e-8,0.928667724, -4.398698e-8,0.37091279));
end elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency==0) then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then EquipWeapon("Torch");
topos(CFrame.new(1114.61475,5.04679728,4350.22803, -0.648466587, -1.2879909e-9,0.761243105, -5.706529e-10,1,1.2058454e-9, -0.761243105,3.4754488e-10, -0.648466587));
else topos(CFrame.new( -1610.00757,11.5049858,164.001587,0.984807551, -0.167722285, -0.0449818149,0.17364943,0.951244235,0.254912198,0.00003423728, -0.258850515,0.965917408));
end elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")~=0) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup");
wait(0.5);
EquipWeapon("Cup");
wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup);
wait(0);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan");
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")==nil) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon");
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")==0) then 
if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then topos(CFrame.new( -2967.59521, -4.91089821,5328.70703,0.342208564, -0.0227849055,0.939347804,0.0251603816,0.999569714,0.0150796166, -0.939287126,0.0184739735,0.342634559));
for v3121,v3122 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3122.Name=="Mob Leader") then 
if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then 
if (v3122:FindFirstChild("Humanoid") and v3122:FindFirstChild("HumanoidRootPart") and (v3122.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v3122.HumanoidRootPart.CanCollide=false;
v3122.Humanoid.WalkSpeed=0;
v3122.HumanoidRootPart.Size=Vector3.new(80,80,80);
topos(v3122.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (v3122.Humanoid.Health<=0) or  not _G.Saber  
end 
end 
if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode );
end 
end 
end 
end elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")==1) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon");
wait(0.5);
EquipWeapon("Relic");
wait(0.5);
topos(CFrame.new( -1404.91504,29.9773273,3.80598116,0.876514494,5.6690688e-9,0.481375456,2.53852e-8,1, -5.799956e-8, -0.481375456,6.3057264e-8,0.876514494));
end elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then 
for v2668,v2669 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2669:FindFirstChild("Humanoid") and v2669:FindFirstChild("HumanoidRootPart") and (v2669.Humanoid.Health>0)) then 
if (v2669.Name=="Saber Expert") then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v2669.HumanoidRootPart.CFrame * Pos );
v2669.HumanoidRootPart.Size=Vector3.new(60,60,60);
v2669.HumanoidRootPart.Transparency=1;
v2669.Humanoid.JumpPower=0;
v2669.Humanoid.WalkSpeed=0;
v2669.HumanoidRootPart.CanCollide=false;
FarmPos=v2669.HumanoidRootPart.CFrame;
MonFarm=v2669.Name;
until (v2669.Humanoid.Health<=0) or  not _G.Saber  
if (v2669.Humanoid.Health<=0) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic");
end 
end 
end 
end 
end 
end);
end 
end 
end);
v56:Seperator("Lôi Thể");
v56:Toggle("Lấy Gậy Lôi Thể v1",_G.doughking,
function(v457) _G.pole=v457;
StopTween(_G.pole);
end);
v56:Toggle("Gậy Lôi Thể Đổi Sever",_G.doughkingHop,
function(v458) _G.polehop=v458;
end);
local v86=CFrame.new( -7748.0185546875,5606.80615234375, -2305.898681640625);
spawn(
function() 
while wait() 
do 
if (_G.pole and World1) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then 
for v2359,v2360 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2360.Name=="Thunder God") then 
if (v2360:FindFirstChild("Humanoid") and v2360:FindFirstChild("HumanoidRootPart") and (v2360.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2360.HumanoidRootPart.CanCollide=false;
v2360.Humanoid.WalkSpeed=0;
v2360.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2360.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.pole or  not v2360.Parent or (v2360.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v86.Position).Magnitude>3500) then BTP(v86);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v86.Position).Magnitude<3500) then topos(v86);
end else topos(TridentPos);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -7748.0185546875,5606.80615234375, -2305.898681640625));
if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.polehop then Hop();
end 
end 
end);
end 
end 
end);
v56:Label("Biển 2");
v56:Seperator("Kiếm Huyền Thoại");
v56:Toggle("Mua Kiếm Huyền Thoại",_G.BuyLegendarySword,
function(v459) _G.BuyLegendarySword=v459;
end);
spawn(
function() 
while wait() 
do 
if _G.BuyLegendarySword then pcall(
function() 
local v2039={[1]="LegendarySwordDealer",[2]="1"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2039));
local v2039={[1]="LegendarySwordDealer",[2]="2"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2039));
local v2039={[1]="LegendarySwordDealer",[2]="3"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2039));
if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then wait(10);
Hop();
end 
end);
end 
end 
end);
v56:Toggle("Kiếm Huyền Thoại Đổi Sever",_G.BuyLegendarySword_Hop,
function(v460) _G.BuyLegendarySword_Hop=v460;
end);
v56:Seperator("Haki Màu");
local v87=game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer","1");
v56:Toggle("Mua Haki Màu",_G.BuyEnchancementColour,
function(v461) _G.BuyEnchancementColour=v461;
end);
v56:Toggle("Haki Màu Đổi Sever",_G.BuyEnchancementColour_Hop,
function(v462) _G.BuyEnchancementColour_Hop=v462;
end);
spawn(
function() 
while wait() 
do 
if _G.BuyEnchancementColour then 
local v1930={[1]="ColorsDealer",[2]="2"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1930));
if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then wait(10);
Hop();
end 
end 
end 
end);
v56:Seperator("Bartlio");
v56:Toggle("Làm Nhiệm Vụ Bartlio",_G.Bartilo,
function(v463) _G.Bartilo=v463;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Bartilo then 
if ((game:GetService("Players").LocalPlayer.Data.Level.Value>=800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")==0)) then 
if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true)) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then Ms="Swan Pirate";
for v2827,v2828 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2828.Name==Ms) then pcall(
function() 
repeat task.wait();
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2828.HumanoidRootPart.Transparency=1;
v2828.HumanoidRootPart.CanCollide=false;
v2828.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2828.HumanoidRootPart.CFrame * Pos );
PosMonBarto=v2828.HumanoidRootPart.CFrame;
AutoBartiloBring=true;
until  not v2828.Parent or (v2828.Humanoid.Health<=0) or (_G.Bartilo==false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  AutoBartiloBring=false;
end);
end 
end else 
repeat topos(CFrame.new(932.624451,156.106079,1180.27466, -0.973085582,4.5513712e-8, -0.230443969,2.6702471e-8,1,8.474911e-8,0.230443969,7.631471e-8, -0.973085582));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451,156.106079,1180.27466, -0.973085582,4.5513712e-8, -0.230443969,2.6702471e-8,1,8.474911e-8,0.230443969,7.631471e-8, -0.973085582)).Magnitude<=10)  
end else 
repeat topos(CFrame.new( -456.28952,73.0200958,299.895966));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -456.28952,73.0200958,299.895966)).Magnitude<=10)  wait(1.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1);
end elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value>=800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")==1)) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then Ms="Jeremy";
for v2829,v2830 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2830.Name==Ms) then OldCFrameBartlio=v2830.HumanoidRootPart.CFrame;
repeat task.wait();
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2830.HumanoidRootPart.Transparency=1;
v2830.HumanoidRootPart.CanCollide=false;
v2830.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2830.HumanoidRootPart.CFrame=OldCFrameBartlio;
topos(v2830.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until  not v2830.Parent or (v2830.Humanoid.Health<=0) or (_G.Bartilo==false)  
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then 
repeat topos(CFrame.new( -456.28952,73.0200958,299.895966));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -456.28952,73.0200958,299.895966)).Magnitude<=10)  wait(1.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo");
wait(1);
repeat topos(CFrame.new(2099.88159,448.931,648.997375));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159,448.931,648.997375)).Magnitude<=10)  wait(2);
else 
repeat topos(CFrame.new(2099.88159,448.931,648.997375));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159,448.931,648.997375)).Magnitude<=10)  
end elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value>=800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")==2)) then 
repeat topos(CFrame.new( -1850.49329,13.1789551,1750.89685));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1850.49329,13.1789551,1750.89685)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1858.87305,19.3777466,1712.01807));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1858.87305,19.3777466,1712.01807)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1803.94324,16.5789185,1750.89685));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1803.94324,16.5789185,1750.89685)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1858.55835,16.8604317,1724.79541));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1858.55835,16.8604317,1724.79541)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1869.54224,15.987854,1681.00659));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1869.54224,15.987854,1681.00659)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1800.0979,16.4978027,1684.52368));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1800.0979,16.4978027,1684.52368)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1819.26343,14.795166,1717.90625));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1819.26343,14.795166,1717.90625)).Magnitude<=10)  wait(1);
repeat topos(CFrame.new( -1813.51843,14.8604736,1724.79541));
wait();
until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -1813.51843,14.8604736,1724.79541)).Magnitude<=10)  
end 
end 
end 
end);
end);
v56:Seperator("Kính Thiên Nga");
v56:Toggle("Lấy Kính Thiên Nga",_G.FarmSwanGlasses,
function(v464) _G.FarmSwanGlasses=v464;
StopTween(_G.FarmSwanGlasses);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.FarmSwanGlasses then 
if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then 
for v2361,v2362 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2362.Name=="Don Swan") and (v2362.Humanoid.Health>0) and v2362:IsA("Model") and v2362:FindFirstChild("Humanoid") and v2362:FindFirstChild("HumanoidRootPart")) then 
repeat task.wait();
pcall(
function() AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2362.HumanoidRootPart.CanCollide=false;
v2362.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2362.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end);
until (_G.FarmSwanGlasses==false) or (v2362.Humanoid.Health<=0)  
end 
end else 
repeat task.wait();
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375,15.537666320801,905.48291015625));
until ((CFrame.new(2284.912109375,15.537666320801,905.48291015625).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=4) or (_G.FarmSwanGlasses==false)  
end 
end 
end 
end);
end);
v56:Toggle("Kính Thiên Nga Đổi Sever",_G.FarmSwanGlasses_Hop,
function(v465) _G.FarmSwanGlasses_Hop=v465;
end);
v56:Toggle("Tự Động Nâng Tộc V2",_G.EvoRace,
function(v466) _G.EvoRace=v466;
StopTween(_G.EvoRace);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.EvoRace then 
if  not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")==0) then topos(CFrame.new( -2779.83521,72.9661407, -3574.02002, -0.730484903,6.390141e-8, -0.68292886,3.5996322e-8,1,5.5066703e-8,0.68292886,1.5642467e-8, -0.730484903));
if ((Vector3.new( -2779.83521,72.9661407, -3574.02002) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=4) then wait(1.3);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2");
end elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")==1) then pcall(
function() 
if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then topos(game:GetService("Workspace").Flower1.CFrame);
elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then topos(game:GetService("Workspace").Flower2.CFrame);
elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then 
for v3128,v3129 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3129.Name=="Zombie") then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
topos(v3129.HumanoidRootPart.CFrame * Pos );
v3129.HumanoidRootPart.CanCollide=false;
v3129.HumanoidRootPart.Size=Vector3.new(50,50,50);
PosMonEvo=v3129.HumanoidRootPart.CFrame;
StartEvoMagnet=true;
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v3129.Parent or (v3129.Humanoid.Health<=0) or (_G.EvoRace==false)  StartEvoMagnet=false;
end 
end else StartEvoMagnet=false;
topos(CFrame.new( -5685.9233398438,48.480125427246, -853.23724365234));
end 
end 
end);
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")==2) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3");
end 
end 
end 
end 
end);
end);
v56:Seperator("Vật Chất Kì Dị");
v56:Toggle("Cày Vật Chất Kì Dị",_G.Ectoplasm,
function(v467) _G.Ectoplasm=v467;
StopTween(_G.Ectoplasm);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Ectoplasm then 
if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then 
for v2363,v2364 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2364.Name=="Ship Deckhand") or (v2364.Name=="Ship Engineer") or (v2364.Name=="Ship Steward") or (v2364.Name=="Ship Officer")) then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
if string.find(v2364.Name,"Ship") then v2364.HumanoidRootPart.CanCollide=false;
v2364.Head.CanCollide=false;
v2364.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2364.HumanoidRootPart.CFrame * Pos );
EctoplasmMon=v2364.HumanoidRootPart.CFrame;
StartEctoplasmMagnet=true;
else StartEctoplasmMagnet=false;
topos(CFrame.new(911.35827636719,125.95812988281,33159.5390625));
end 
until (_G.Ectoplasm==false) or  not v2364.Parent or (v2364.Humanoid.Health<=0)  
end 
end else topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
StartEctoplasmMagnet=false;
local v2172=(Vector3.new(911.35827636719,125.95812988281,33159.5390625) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
if (v2172>18000) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406,126.9760055542,32852.83203125));
end topos(CFrame.new(911.35827636719,125.95812988281,33159.5390625));
end 
end 
end 
end);
end);
v56:Seperator("Rengoku");
v56:Toggle("Lấy Rengoku",_G.Rengoku,
function(v468) _G.Rengoku=v468;
StopTween(_G.Rengoku);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Rengoku then 
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then EquipWeapon("Hidden Key");
topos(CFrame.new(6571.1201171875,299.23028564453, -6967.841796875));
elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then 
for v2670,v2671 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (((v2671.Name=="Snow Lurker") or (v2671.Name=="Arctic Warrior")) and (v2671.Humanoid.Health>0)) then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2671.HumanoidRootPart.CanCollide=false;
v2671.HumanoidRootPart.Size=Vector3.new(50,50,50);
RengokuMon=v2671.HumanoidRootPart.CFrame;
topos(v2671.HumanoidRootPart.CFrame * Pos );
StartRengokuMagnet=true;
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku==false) or  not v2671.Parent or (v2671.Humanoid.Health<=0)  StartRengokuMagnet=false;
end 
end else StartRengokuMagnet=false;
topos(CFrame.new(5439.716796875,84.420944213867, -6715.1635742188));
end 
end 
end 
end);
end);
v56:Seperator("Trident");
v56:Toggle("Lấy Dragon Trident",_G.Dragon_Trident,
function(v469) _G.Dragon_Trident=v469;
StopTween(_G.Dragon_Trident);
end);
v56:Toggle("Lấy Dragon Trident Đổi Sever",_G.Dragon_Trident_Hop,
function(v470) _G.Dragon_Trident_Hop=v470;
end);
local v88=CFrame.new( -3914.830322265625,123.29389190673828, -11516.8642578125);
spawn(
function() 
while wait() 
do 
if (_G.Dragon_Trident and World2) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then 
for v2365,v2366 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2366.Name=="Tide Keeper") then 
if (v2366:FindFirstChild("Humanoid") and v2366:FindFirstChild("HumanoidRootPart") and (v2366.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2366.HumanoidRootPart.CanCollide=false;
v2366.Humanoid.WalkSpeed=0;
v2366.HumanoidRootPart.Size=Vector3.new(50,50,50);
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672));
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.Dragon_Trident or  not v2366.Parent or (v2366.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v88.Position).Magnitude>3500) then BTP(v88);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v88.Position).Magnitude<3500) then topos(v88);
end else topos(v88);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -3914.830322265625,123.29389190673828, -11516.8642578125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.Dragon_Trident_Hop then Hop();
end 
end 
end);
end 
end 
end);
v56:Label("Biển 3");
v56:Seperator("Rip Indra");
v56:Toggle("Đánh Rip_Indra True",_G.DarkDagger,
function(v471) _G.DarkDagger=v471;
StopTween(_G.DarkDagger);
end);
local v89=CFrame.new( -5344.822265625,423.98541259766, -2725.0930175781);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.DarkDagger then 
if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then 
for v2367,v2368 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if ((v2368.Name==("rip_indra True Form" or (v2368.Name=="rip_indra"))) and (v2368.Humanoid.Health>0) and v2368:IsA("Model") and v2368:FindFirstChild("Humanoid") and v2368:FindFirstChild("HumanoidRootPart")) then 
repeat task.wait();
pcall(
function() AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2368.HumanoidRootPart.CanCollide=false;
v2368.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2368.HumanoidRootPart.CFrame * Pos );
end);
until (_G.DarkDagger==false) or (v2368.Humanoid.Health<=0)  
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v89.Position).Magnitude>3500) then BTP(v89);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v89.Position).Magnitude<3500) then topos(v89);
end else topos(v89);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -5344.822265625,423.98541259766, -2725.0930175781));
end 
end 
end 
end);
end);
v56:Toggle("Rip_Indra True Đổi Sever",_G.DarkDagger_Hop,
function(v472) _G.DarkDagger_Hop=v472;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if (_G.DarkDagger_Hop and _G.DarkDagger and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then Hop();
end 
end 
end);
end);
v56:Toggle("Tự động nhấn nút Haki",_G.Ob_Color,
function(v473) Open_Color_Haki=v473;
StopTween(Open_Color_Haki);
end);
spawn(
function() 
while wait(0.3) 
do pcall(
function() 
if Open_Color_Haki then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky");
wait(0.5);
repeat topos(CFrame.new( -5420.16602,1084.9657, -2666.8208));
wait();
until (_G.StopTween==true) or (Open_Color_Haki==false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -5420.16602,1084.9657, -2666.8208)).Magnitude<=10)  wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red");
wait(0.5);
repeat topos(CFrame.new( -5414.41357,309.865753, -2212.45776));
wait();
until (_G.StopTween==true) or (Open_Color_Haki==false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -5414.41357,309.865753, -2212.45776)).Magnitude<=10)  wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White");
wait(0.5);
repeat topos(CFrame.new( -4971.47559,331.565765, -3720.02954));
wait();
until (_G.StopTween==true) or (Open_Color_Haki==false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -4971.47559,331.565765, -3720.02954)).Magnitude<=10)  wait(0.5);
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,600));
wait(3);
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,600));
end 
end);
end 
end);
function EquipAllWeapon() pcall(
function() 
for v1786,v1787 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if (v1787:IsA("Tool") and  not ((v1787.Name=="Summon Sea Beast") or (v1787.Name=="Water Body") or (v1787.Name=="Awakening"))) then 
local v2040=game.Players.LocalPlayer.Backpack:FindFirstChild(v1787.Name);
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2040);
wait(1);
end 
end 
end);
end v56:Seperator("Yama");
v56:Toggle("Lấy Yama",_G.Yama,
function(v474) _G.Yama=v474;
StopTween(_G.Yama);
end);
spawn(
function() 
while wait() 
do 
if _G.Yama then 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")>=30) then 
repeat wait(0.1);
fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama  
end 
end 
end 
end);
v56:Seperator("Musketeer");
v56:Toggle("Lấy Musketeer Hat",_G.MusketeerHat,
function(v475) _G.MusketeerHat=v475;
StopTween(_G.MusketeerHat);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.MusketeerHat then 
if ((game:GetService("Players").LocalPlayer.Data.Level.Value>=1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits==false)) then 
if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true)) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then 
for v2835,v2836 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2836.Name=="Forest Pirate") then 
repeat task.wait();
pcall(
function() EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2836.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2836.HumanoidRootPart.CFrame * Pos );
v2836.HumanoidRootPart.CanCollide=false;
MusketeerHatMon=v2836.HumanoidRootPart.CFrame;
StartMagnetMusketeerhat=true;
end);
until (_G.MusketeerHat==false) or  not v2836.Parent or (v2836.Humanoid.Health<=0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  StartMagnetMusketeerhat=false;
end 
end else StartMagnetMusketeerhat=false;
topos(CFrame.new( -13206.452148438,425.89199829102, -7964.5537109375));
end else topos(CFrame.new( -12443.8671875,332.40396118164, -7675.4892578125));
if ((Vector3.new( -12443.8671875,332.40396118164, -7675.4892578125) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=30) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1);
end 
end elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value>=1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss==false)) then 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true)) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then 
for v2935,v2936 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2936.Name=="Captain Elephant") then OldCFrameElephant=v2936.HumanoidRootPart.CFrame;
repeat task.wait();
pcall(
function() EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2936.HumanoidRootPart.CanCollide=false;
v2936.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2936.HumanoidRootPart.CFrame * Pos );
v2936.HumanoidRootPart.CanCollide=false;
v2936.HumanoidRootPart.CFrame=OldCFrameElephant;
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end);
until (_G.MusketeerHat==false) or (v2936.Humanoid.Health<=0) or  not v2936.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new( -13374.889648438,421.27752685547, -8225.208984375));
end else topos(CFrame.new( -12443.8671875,332.40396118164, -7675.4892578125));
if ((CFrame.new( -12443.8671875,332.40396118164, -7675.4892578125).Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=4) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen");
end 
end elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value>=1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")==2)) then topos(CFrame.new( -12512.138671875,340.39279174805, -9872.8203125));
end 
end 
end 
end);
end);
v56:Seperator("Twin Hook");
v56:Toggle("Lấy Twin Hook",_G.TwinHook,
function(v476) _G.TwinHook=v476;
StopTween(_G.TwinHook);
end);
v56:Toggle("Lấy Twin Hook Đổi Sever",_G.TwinHook_Hop,
function(v477) _G.TwinHook_Hop=v477;
end);
local v90=CFrame.new( -13348.0654296875,405.8904113769531, -8570.62890625);
spawn(
function() 
while wait() 
do 
if (_G.TwinHook and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then 
for v2369,v2370 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2370.Name=="Captain Elephant") then 
if (v2370:FindFirstChild("Humanoid") and v2370:FindFirstChild("HumanoidRootPart") and (v2370.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2370.HumanoidRootPart.CanCollide=false;
v2370.Humanoid.WalkSpeed=0;
v2370.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2370.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.TwinHook or  not v2370.Parent or (v2370.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v90.Position).Magnitude>3500) then BTP(v90);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v90.Position).Magnitude<3500) then topos(v90);
end else topos(v90);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -13348.0654296875,405.8904113769531, -8570.62890625));
if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.TwinHook_Hop then Hop();
end 
end 
end);
end 
end 
end);
v56:Seperator("Haki");
v56:Toggle("Lấy Haki Màu",_G.Rainbow_Haki,
function(v478) _G.Rainbow_Haki=v478;
StopTween(_G.Rainbow_Haki);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Rainbow_Haki then 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) then topos(CFrame.new( -11892.0703125,930.57672119141, -8760.1591796875));
if ((Vector3.new( -11892.0703125,930.57672119141, -8760.1591796875) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=30) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet");
end elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Stone")) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then 
for v2837,v2838 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2838.Name=="Stone") then OldCFrameRainbow=v2838.HumanoidRootPart.CFrame;
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v2838.HumanoidRootPart.CFrame * Pos );
v2838.HumanoidRootPart.CanCollide=false;
v2838.HumanoidRootPart.CFrame=OldCFrameRainbow;
v2838.HumanoidRootPart.Size=Vector3.new(50,50,50);
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Rainbow_Haki==false) or (v2838.Humanoid.Health<=0) or  not v2838.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new( -1086.11621,38.8425903,6768.71436,0.0231462717, -0.592676699,0.805107772,0.000020325184,0.805323839,0.592835128, -0.999732077, -0.0137055516,0.0186523199));
end elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Island Empress")) then 
if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then 
for v2938,v2939 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2939.Name=="Island Empress") then OldCFrameRainbow=v2939.HumanoidRootPart.CFrame;
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v2939.HumanoidRootPart.CFrame * Pos );
v2939.HumanoidRootPart.CanCollide=false;
v2939.HumanoidRootPart.CFrame=OldCFrameRainbow;
v2939.HumanoidRootPart.Size=Vector3.new(50,50,50);
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Rainbow_Haki==false) or (v2939.Humanoid.Health<=0) or  not v2939.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new(5713.98877,601.922974,202.751251, -0.101080291,"-0", -0.994878292,"-0",1,"-0",0.994878292,0, -0.101080291));
end elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Kilo Admiral") then 
if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then 
for v3062,v3063 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3063.Name=="Kilo Admiral") then OldCFrameRainbow=v3063.HumanoidRootPart.CFrame;
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v3063.HumanoidRootPart.CFrame * Pos );
v3063.HumanoidRootPart.CanCollide=false;
v3063.HumanoidRootPart.Size=Vector3.new(50,50,50);
v3063.HumanoidRootPart.CFrame=OldCFrameRainbow;
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Rainbow_Haki==false) or (v3063.Humanoid.Health<=0) or  not v3063.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new(2877.61743,423.558685, -7207.31006, -0.989591599,"-0", -0.143904909,"-0",1.00000012,"-0",0.143904924,0, -0.989591479));
end elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Captain Elephant") then 
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then 
for v3105,v3106 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3106.Name=="Captain Elephant") then OldCFrameRainbow=v3106.HumanoidRootPart.CFrame;
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v3106.HumanoidRootPart.CFrame * Pos );
v3106.HumanoidRootPart.CanCollide=false;
v3106.HumanoidRootPart.Size=Vector3.new(50,50,50);
v3106.HumanoidRootPart.CFrame=OldCFrameRainbow;
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Rainbow_Haki==false) or (v3106.Humanoid.Health<=0) or  not v3106.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new( -13485.0283,331.709259, -8012.4873,0.714521289,7.988499e-8,0.69961375, -1.0206575e-7,1, -9.943831e-9, -0.69961375, -6.4301524e-8,0.714521289));
end elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Beautiful Pirate") then 
if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then 
for v3124,v3125 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v3125.Name=="Beautiful Pirate") then OldCFrameRainbow=v3125.HumanoidRootPart.CFrame;
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
topos(v3125.HumanoidRootPart.CFrame * Pos );
v3125.HumanoidRootPart.CanCollide=false;
v3125.HumanoidRootPart.Size=Vector3.new(50,50,50);
v3125.HumanoidRootPart.CFrame=OldCFrameRainbow;
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
until (_G.Rainbow_Haki==false) or (v3125.Humanoid.Health<=0) or  not v3125.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false)  
end 
end else topos(CFrame.new(5312.3598632813,20.141201019287, -10.158538818359));
end else topos(CFrame.new( -11892.0703125,930.57672119141, -8760.1591796875));
if ((Vector3.new( -11892.0703125,930.57672119141, -8760.1591796875) -game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=30) then wait(1.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet");
end 
end 
end 
end 
end);
end);
v56:Toggle("Lấy Haki Quan Sát V2",_G.Observationv2,
function(v479) _G.Observationv2=v479;
StopTween(_G.Observationv2);
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.Observationv2 then 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")==3) then _G.MusketeerHat=false;
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then 
repeat topos(CFrame.new( -12444.78515625,332.40396118164, -7673.1806640625));
wait();
until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -12444.78515625,332.40396118164, -7673.1806640625)).Magnitude<=10)  wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen");
elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then 
repeat topos(CFrame.new( -10920.125,624.20275878906, -10266.995117188));
wait();
until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new( -10920.125,624.20275878906, -10266.995117188)).Magnitude<=10)  wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start");
wait(1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy");
else 
for v2839,v2840 in pairs(game:GetService("Workspace"):GetDescendants()) 
do 
if ((v2840.Name=="Apple") or (v2840.Name=="Banana") or (v2840.Name=="Pineapple")) then v2840.Handle.CFrame=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10) ;
wait();
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v2840.Handle,0);
wait();
end 
end 
end else _G.MusketeerHat=true;
end 
end 
end);
end 
end);
v56:Seperator("Carvander");
v56:Toggle("Lấy Cavander",_G.Carvender,
function(v480) _G.Carvender=v480;
StopTween(_G.Carvender);
end);
v56:Toggle("Lấy Carvander Đổi Sever",_G.Carvenderhop,
function(v481) _G.Carvenderhop=v481;
end);
local v91=CFrame.new(5311.07421875,426.0243835449219,165.12762451171875);
spawn(
function() 
while wait() 
do 
if (_G.Carvender and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then 
for v2371,v2372 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2372.Name=="Beautiful Pirate") then 
if (v2372:FindFirstChild("Humanoid") and v2372:FindFirstChild("HumanoidRootPart") and (v2372.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2372.HumanoidRootPart.CanCollide=false;
v2372.Humanoid.WalkSpeed=0;
v2372.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2372.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.Carvender or  not v2372.Parent or (v2372.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v91.Position).Magnitude>3500) then BTP(v91);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v91.Position).Magnitude<3500) then topos(v91);
end else topos(v91);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new(5311.07421875,426.0243835449219,165.12762451171875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.Cavanderhop then Hop();
end 
end 
end);
end 
end 
end);
v56:Seperator("Tushita");
v56:Toggle("Lấy Tushita",_G.tushita,
function(v482) _G.tushita=v482;
StopTween(_G.tushita);
end);
v56:Toggle("Lấy Tushita Đổi Sever",_G.tushitahop,
function(v483) _G.tushitahop=v483;
end);
local v92=CFrame.new( -10238.875976563,389.7912902832, -9549.7939453125);
spawn(
function() 
while wait() 
do 
if (_G.tushita and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then 
for v2373,v2374 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2374.Name=="Longma") then 
if (v2374:FindFirstChild("Humanoid") and v2374:FindFirstChild("HumanoidRootPart") and (v2374.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2374.HumanoidRootPart.CanCollide=false;
v2374.Humanoid.WalkSpeed=0;
v2374.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2374.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.tushita or  not v2374.Parent or (v2374.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v92.Position).Magnitude>3500) then BTP(v92);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v92.Position).Magnitude<3500) then topos(v92);
end else topos(v92);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -10238.875976563,389.7912902832, -9549.7939453125));
if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.tushitahop then Hop();
end 
end 
end);
end 
end 
end);
v56:Seperator("Hallow Scythe");
v56:Toggle("Lấy Lưỡi Hái",_G.FarmBossHallow,
function(v484) _G.FarmBossHallow=v484;
StopTween(_G.FarmBossHallow);
end);
v56:Toggle("Lưỡi Hái Đổi Sever",_G.FarmBossHallowHop,
function(v485) _G.FarmBossHallowHop=v485;
end);
spawn(
function() 
while wait() 
do 
if _G.FarmBossHallow then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then 
for v2375,v2376 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if string.find(v2376.Name,"Soul Reaper") then 
repeat task.wait();
EquipWeapon(_G.SelectWeapon);
AutoHaki();
v2376.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2376.HumanoidRootPart.CFrame * Pos );
v2376.HumanoidRootPart.Transparency=1;
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until (v2376.Humanoid.Health<=0) or (_G.FarmBossHallow==false)  
end 
end elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then 
repeat topos(CFrame.new( -8932.322265625,146.83154296875,6062.55078125));
wait();
until (CFrame.new( -8932.322265625,146.83154296875,6062.55078125).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=8  EquipWeapon("Hallow Essence");
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.FarmBossHallowHop then Hop();
end 
end);
end 
end 
end);
v56:Seperator("Buddy Sword");
v56:Toggle("Lấy Kiếm Buddy",_G.BudySword,
function(v486) _G.BudySword=v486;
StopTween(_G.BudySword);
end);
v56:Toggle("Kiếm Buddy Đổi Sever",_G.BudySwordHop,
function(v487) _G.BudySwordHop=v487;
end);
local v93=CFrame.new( -731.2034301757812,381.5658874511719, -11198.4951171875);
spawn(
function() 
while wait() 
do 
if (_G.BudySword and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then 
for v2377,v2378 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2378.Name=="Cake Queen") then 
if (v2378:FindFirstChild("Humanoid") and v2378:FindFirstChild("HumanoidRootPart") and (v2378.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2378.HumanoidRootPart.CanCollide=false;
v2378.Humanoid.WalkSpeed=0;
v2378.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2378.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.BudySword or  not v2378.Parent or (v2378.Humanoid.Health<=0)  
end 
end 
end else 
if BypassTP then 
if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v93.Position).Magnitude>3500) then BTP(v93);
elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v93.Position).Magnitude<3500) then topos(v93);
end else topos(v93);
end UnEquipWeapon(_G.SelectWeapon);
topos(CFrame.new( -731.2034301757812,381.5658874511719, -11198.4951171875));
if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.BudySwordHop then Hop();
end 
end 
end);
end 
end 
end);
spawn(
function() 
while task.wait() 
do pcall(
function() 
if _G.BringMonster then CheckQuest();
for v2112,v2113 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (_G.Level and StartMagnet and (v2113.Name==Mon) and ((Mon=="Factory Staff") or (Mon=="Monkey") or (Mon=="Dragon Crew Warrior") or (Mon=="Dragon Crew Archer")) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0) and ((v2113.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=250)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.HumanoidRootPart.CFrame=PosMon;
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
elseif (_G.Level and StartMagnet and (v2113.Name==Mon) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0) and ((v2113.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.HumanoidRootPart.CFrame=PosMon;
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
if (_G.Ectoplasm and StartEctoplasmMagnet) then 
if (string.find(v2113.Name,"Ship") and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0) and ((v2113.HumanoidRootPart.Position-EctoplasmMon.Position).Magnitude<=_G.BringMode)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.HumanoidRootPart.CFrame=EctoplasmMon;
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.Rengoku and StartRengokuMagnet) then 
if (((v2113.Name=="Snow Lurker") or (v2113.Name=="Arctic Warrior")) and ((v2113.HumanoidRootPart.Position-RengokuMon.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(1500,1500,1500);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=RengokuMon;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.MusketeerHat and StartMagnetMusketeerhat) then 
if ((v2113.Name=="Forest Pirate") and ((v2113.HumanoidRootPart.Position-MusketeerHatMon.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=MusketeerHatMon;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.ObservationHakiV2 and Mangnetcitzenmon) then 
if ((v2113.Name=="Forest Pirate") and ((v2113.HumanoidRootPart.Position-MusketeerHatMon.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosHee;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.EvoRace and StartEvoMagnet) then 
if ((v2113.Name=="Zombie") and ((v2113.HumanoidRootPart.Position-PosMonEvo.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonEvo;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.Bartilo and AutoBartiloBring) then 
if ((v2113.Name=="Swan Pirate") and ((v2113.HumanoidRootPart.Position-PosMonBarto.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonBarto;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then 
if (v2113.Name=="Monkey") then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryFruit.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryFruit;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end elseif (v2113.Name=="Factory Staff") then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryFruit.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryFruit;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end elseif (v2113.Name==Mon) then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryFruit.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryFruit;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end 
if (_G.FarmGunMastery and StartMasteryGunMagnet) then 
if (v2113.Name=="Monkey") then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryGun.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryGun;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end elseif (v2113.Name=="Factory Staff") then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryGun.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryGun;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end elseif (v2113.Name==Mon) then 
if (((v2113.HumanoidRootPart.Position-PosMonMasteryGun.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonMasteryGun;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end 
if (_G.Bone and StartMagnetBoneMon) then 
if (((v2113.Name=="Reborn Skeleton") or (v2113.Name=="Living Zombie") or (v2113.Name=="Demonic Soul") or (v2113.Name=="Posessed Mummy")) and ((v2113.HumanoidRootPart.Position-PosMonBone.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonBone;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.FarmCandy and StartCandyMagnet) then 
if (((v2113.Name=="Ice Cream Chef") or (v2113.Name=="Ice Cream Commander")) and ((v2113.HumanoidRootPart.Position-CandyMon.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=CandyMon;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (StardFarm and FarmMag) then 
if (((v2113.Name=="Cocoa Warrior") or (v2113.Name=="Chocolate Bar Battler") or (v2113.Name=="Sweet Thief") or (v2113.Name=="Candy Rebel")) and ((v2113.HumanoidRootPart.Position-PosGG.Position).Magnitude<=250) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosGG;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.Farmfast and StardMag) then 
if (((v2113.Name=="Shanda") or (v2113.Name=="Shanda")) and ((v2113.HumanoidRootPart.Position-FastMon.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=FastMon;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
if (_G.DoughtBoss and MagnetDought) then 
if (((v2113.Name=="Cookie Crafter") or (v2113.Name=="Cake Guard") or (v2113.Name=="Baking Staff") or (v2113.Name=="Head Baker")) and ((v2113.HumanoidRootPart.Position-PosMonDoughtOpenDoor.Position).Magnitude<=_G.BringMode) and v2113:FindFirstChild("Humanoid") and v2113:FindFirstChild("HumanoidRootPart") and (v2113.Humanoid.Health>0)) then v2113.HumanoidRootPart.Size=Vector3.new(50,50,50);
v2113.Humanoid:ChangeState(14);
v2113.HumanoidRootPart.CanCollide=false;
v2113.Head.CanCollide=false;
v2113.HumanoidRootPart.CFrame=PosMonDoughtOpenDoor;
if v2113.Humanoid:FindFirstChild("Animator") then v2113.Humanoid.Animator:Destroy();
end sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end 
end 
end);
end 
end);
task.
spawn(
function() 
while true 
do wait();
if setscriptable then setscriptable(game.Players.LocalPlayer,"SimulationRadius",true);
end 
if sethiddenproperty then sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
end 
end 
end);
function InMyNetWork(v488) 
if isnetworkowner then 
return isnetworkowner(v488);
else 
if ((v488.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode) then 
return true;
end 
return false;
end 
end task.
spawn(
function() 
while task.wait() 
do pcall(
function() 
if (MakoriGayMag and _G.BringMonster) then 
for v2114,v2115 in pairs(game.Workspace.Enemies:GetChildren()) 
do 
if ( not string.find(v2115.Name,"Boss") and ((v2115.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode)) then 
if InMyNetWork(v2115.HumanoidRootPart) then v2115.HumanoidRootPart.CFrame=PosGay;
v2115.Humanoid.JumpPower=0;
v2115.Humanoid.WalkSpeed=0;
v2115.HumanoidRootPart.Size=Vector3.new(60,60,60);
v2115.HumanoidRootPart.Transparency=1;
v2115.HumanoidRootPart.CanCollide=false;
v2115.Head.CanCollide=false;
if v2115.Humanoid:FindFirstChild("Animator") then v2115.Humanoid.Animator:Destroy();
end v2115.Humanoid:ChangeState(11);
v2115.Humanoid:ChangeState(14);
end 
end 
end 
end 
end);
end 
end);
task.
spawn(
function() 
while task.wait() 
do pcall(
function() 
if (Anchor and _G.BringMonster) then 
for v2116,v2117 in pairs(game.Workspace.Enemies:GetChildren()) 
do 
if ( not string.find(v2117.Name,"Boss") and ((v2117.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode)) then 
if InMyNetWork(v2117.HumanoidRootPart) then v2117.HumanoidRootPart.CFrame=PosNarathiwat;
v2117.Humanoid.JumpPower=0;
v2117.Humanoid.WalkSpeed=0;
v2117.HumanoidRootPart.Size=Vector3.new(60,60,60);
v2117.HumanoidRootPart.Transparency=1;
v2117.HumanoidRootPart.CanCollide=false;
v2117.Head.CanCollide=false;
if v2117.Humanoid:FindFirstChild("Animator") then v2117.Humanoid.Animator:Destroy();
end v2117.Humanoid:ChangeState(11);
v2117.Humanoid:ChangeState(14);
end 
end 
end 
end 
end);
end 
end);
task.
spawn(
function() 
while task.wait() 
do pcall(
function() 
if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then 
for v2118,v2119 in pairs(game.Workspace.Enemies:GetChildren()) 
do 
if ( not string.find(v2119.Name,"Boss") and ((v2119.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=_G.BringMode)) then 
if InMyNetWork(v2119.HumanoidRootPart) then v2119.HumanoidRootPart.CFrame=PosMon;
v2119.Humanoid.JumpPower=0;
v2119.Humanoid.WalkSpeed=0;
v2119.HumanoidRootPart.Size=Vector3.new(60,60,60);
v2119.HumanoidRootPart.Transparency=1;
v2119.HumanoidRootPart.CanCollide=false;
v2119.Head.CanCollide=false;
if v2119.Humanoid:FindFirstChild("Animator") then v2119.Humanoid.Animator:Destroy();
end v2119.Humanoid:ChangeState(11);
v2119.Humanoid:ChangeState(14);
end 
end 
end 
end 
end);
end 
end);
if (World1 or World2) then v57:Label("Hãy Qua Sea 3");
end 
if World3 then v57:Seperator("Đảo Bí Ẩn");
v57:Toggle("Tự Động Đảo Bí Ẩn",_G.MysticIsland,
function(v1788) _G.MysticIsland=v1788;
StopTween(_G.MysticIsland);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.MysticIsland then 
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z));
end 
end 
end 
end);
end);
v57:Toggle("Tự Động Lái",AutoW,
function(v1789) AutoW=v1789;
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if AutoW then game:service("VirtualInputManager"):SendKeyEvent(true,"W",false,game);
wait(0.35);
game:service("VirtualInputManager"):SendKeyEvent(false,"W",false,game);
wait(1.5);
game:service("VirtualInputManager"):SendKeyEvent(true,"S",false,game);
wait(0.35);
game:service("VirtualInputManager"):SendKeyEvent(false,"S",false,game);
wait(1.5);
end 
end);
end 
end);
v57:Toggle("Auto Summon Mirage Island",_G.dao,
function(v1790) 
if v1790 then _G.dao=true;
else _G.dao=false;
end 
if _G.dao then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
wait(1);
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new( -5411.22021,778.609863, -2682.27759,0.927179396,0,0.374617696,0,1,0, -0.374617696,0,0.927179396);
wait(0);
local v2042={[1]="BuyBoat",[2]="PirateBrigade"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2042));
function two(v2120) pcall(
function() game.Players.LocalPlayer.Character.Humanoid.Sit=false;
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored=false;
end);
if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position-v2120.Position).Magnitude<=200) then pcall(
function() tweenz:Cancel();
end);
game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame=v2120;
else 
local v2384=game:service("TweenService");
local v2385=TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position-v2120.Position).Magnitude/325 ,Enum.EasingStyle.Linear);
tween,err=pcall(
function() tweenz=v2384:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'],v2385,{CFrame=v2120});
tweenz:Play();
end);
if  not tween then 
return err;
end 
end 
function _TweenCanCle() tweenz:Cancel();
end 
end two(CFrame.new( -5100.7085,29.968586, -6792.45459, -0.33648631, -0.0396691673,0.940852463, -6.404617e-7,0.999112308,0.0421253517, -0.941688359,0.0141740013, -0.336187631));
wait(13);
for v2121,v2122 in next,workspace.Boats.PirateBrigade:GetDescendants() 
do 
if v2122.Name:find("VehicleSeat") then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v2122.CFrame;
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500, -100) );
end 
end 
end 
end 
end);
v57:Toggle("Bay Đến Chổ Bán Trái",_G.TPNPC,
function(v1791) _G.Miragenpc=v1791;
StopTween(_G.Miragenpc);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Miragenpc then 
if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
end 
end 
end 
end);
end);
v57:Button("Đến Chổ Bán Trái",
function() TweenNpc();
end);
function TweenNpc() 
repeat wait();
until game:GetService("Workspace").Map:FindFirstChild("MysticIsland") 
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then AllNPCS=getnilinstances();
for v2123,v2124 in pairs(game:GetService("Workspace").NPCs:GetChildren()) 
do table.insert(AllNPCS,v2124);
end 
for v2125,v2126 in pairs(AllNPCS) 
do 
if (v2126.Name=="Advanced Fruit Dealer") then topos(v2126.HumanoidRootPart.CFrame);
end 
end 
end 
end v57:Toggle("Bay Đến Bánh Răng",_G.TweenMGear,
function(v1792) _G.TweenMGear=v1792;
StopTween(_G.TweenMGear);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.TweenMGear then 
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then 
for v2741,v2742 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) 
do 
if v2742:IsA("MeshPart") then 
if (v2742.Material==Enum.Material.Neon) then topos(v2742.CFrame);
end 
end 
end 
end 
end 
end 
end);
end);
end 
if World3 then v57:Seperator("Tộc V4");
v57:Button("Bay Đến Đỉnh Cay Đại Thụ",
function() topos(CFrame.new(2947.556884765625,2281.630615234375, -7213.54931640625));
end);
v57:Button("Dịch chuyển đến đền Thờ thời gian",
function() Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
end);
v57:Button("Bay Đến Cần Gạt",
function() topos(CFrame.new(28575.181640625,14936.6279296875,72.31636810302734));
end);
v57:Button("Bay Đến Chỗ Bán Bánh Răng",
function() topos(CFrame.new(28981.552734375,14888.4267578125, -120.245849609375));
end);
v57:Button("Truy cập đồng hồ",
function() game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
end);
v57:Toggle("Mua Bánh Răng",_G.Bone4,
function(v1794) _G.Bone4=v1794;
StopTween(_G.Bone4);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Bone4 then 
local v2175={[1]=true};
local v2175={[1]="UpgradeRace",[2]="Buy"};
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v2175));
end 
end 
end);
end);
v57:Button("Bay Đến Tộc Của Bạn",
function() Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.1);
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.1);
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.1);
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
if (game:GetService("Players").LocalPlayer.Data.Race.Value=="Fishman") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(28224.056640625,14889.4267578125, -210.5872039794922));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Human") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(29237.294921875,14889.4267578125, -206.94955444335938));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Cyborg") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(28492.4140625,14894.4267578125, -422.1100158691406));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Skypiea") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(28967.408203125,14918.0751953125,234.31198120117188));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Ghoul") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(28672.720703125,14889.1279296875,454.5961608886719));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Mink") then Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(28286,14897,103);
wait(0.6);
topos(CFrame.new(29020.66015625,14889.4267578125, -379.2682800292969));
end 
end);
v57:Button("Bay Đến Đồng Hồ",
function() topos(CFrame.new(29551.9941,15069.002, -85.5179291));
end);
v57:Toggle("Tự Động Hoàng Thành Ải",false,
function(v1796) _G.QuestRace=v1796;
StopTween(_G.QuestRace);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.QuestRace then 
if (game:GetService("Players").LocalPlayer.Data.Race.Value=="Human") then 
for v2743,v2744 in pairs(game.Workspace.Enemies:GetDescendants()) 
do 
if (v2744:FindFirstChild("Humanoid") and v2744:FindFirstChild("HumanoidRootPart") and (v2744.Humanoid.Health>0)) then pcall(
function() 
repeat wait(0.1);
v2744.Humanoid.Health=0;
v2744.HumanoidRootPart.CanCollide=false;
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.QuestRace or  not v2744.Parent or (v2744.Humanoid.Health<=0)  
end);
end 
end elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Skypiea") then 
for v2849,v2850 in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) 
do 
if (v2850.Name=="snowisland_Cylinder.081") then topos(v2850.CFrame * CFrame.new(0,0,0) );
end 
end elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Fishman") then 
for v2951,v2952 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) 
do 
if (v2952.Name=="HumanoidRootPart") then topos(v2952.CFrame * CFrame.new(PosX,PosY,PosZ) );
for v3091,v3092 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if v3092:IsA("Tool") then 
if (v3092.ToolTip=="Melee") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3092);
end 
end 
end game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
for v3093,v3094 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if v3094:IsA("Tool") then 
if (v3094.ToolTip=="Blox Fruit") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3094);
end 
end 
end game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.5);
for v3095,v3096 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if v3096:IsA("Tool") then 
if (v3096.ToolTip=="Sword") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3096);
end 
end 
end game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.5);
for v3097,v3098 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) 
do 
if v3098:IsA("Tool") then 
if (v3098.ToolTip=="Gun") then game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3098);
end 
end 
end game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
wait(0.2);
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart);
end 
end elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Cyborg") then topos(CFrame.new(28654,14898.7832, -30,1,0,0,0,1,0,0,0,1));
elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Ghoul") then 
for v3107,v3108 in pairs(game.Workspace.Enemies:GetDescendants()) 
do 
if (v3108:FindFirstChild("Humanoid") and v3108:FindFirstChild("HumanoidRootPart") and (v3108.Humanoid.Health>0)) then pcall(
function() 
repeat wait(0.1);
v3108.Humanoid.Health=0;
v3108.HumanoidRootPart.CanCollide=false;
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.QuestRace or  not v3108.Parent or (v3108.Humanoid.Health<=0)  
end);
end 
end elseif (game:GetService("Players").LocalPlayer.Data.Race.Value=="Mink") then 
for v3126,v3127 in pairs(game:GetService("Workspace"):GetDescendants()) 
do 
if (v3127.Name=="StartPoint") then topos(v3127.CFrame * CFrame.new(0,10,0) );
end 
end 
end 
end 
end 
end);
end);
v57:Toggle("Tự Động Cày Và Bậc V4",false,
function(v1797) _G.Bone=v1797;
_G.Bone4=v1797;
_G.ActiveV4=v1797;
StopTween(_G.Bone);
end);
v57:Toggle("Giết Người Chơi Trial",false,
function(v1798) _G.KillAfterTrials=v1798;
_G.Click=v1798;
_G.TurnKen=v1798;
_G.AimNearest=v1798;
_G.Aimbot_Skill=v1798;
StopTween(_G.KillAfterTrials);
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.KillAfterTrials then 
for v2388,v2389 in pairs(game:GetService("Workspace").Characters:GetChildren()) 
do 
if ((v2389.Name~=game.Players.LocalPlayer.Name) and ((v2389.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=100)) then 
if (v2389.Humanoid.Health>0) then 
repeat wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
NameTarget=v2389.Name;
TP1(v2389.HumanoidRootPart.CFrame * CFrame.new(0,0,5) );
v2389.HumanoidRootPart.CanCollide=false;
v2389.Head.CanCollide=false;
v2389.HumanoidRootPart.Size=Vector3.new(100,100,100);
Click();
until  not _G.KillAfterTrials or  not v2389.Parent or (v2389.Humanoid.Health<=0)  
end 
end 
end 
end 
end);
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.TurnKen then 
repeat task.wait();
if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):SetKeyDown("0x65");
wait(2);
game:GetService("VirtualUser"):SetKeyUp("0x65");
end 
until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation  
end 
end);
end 
end);
v57:Toggle("Tự động khóa mặt trăng",_G.LockCamToMoon,
function(v1799) _G.LockCamToMoon=v1799;
end);
function CamToMoon() workspace.CurrentCamera.CFrame=CFrame.new(workspace.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position );
end 
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.LockCamToMoon then CamToMoon();
end 
end 
end);
end);
v57:Button("Mua nhiệm vụ cổ đại",
function(v1801) game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace","Buy");
end);
end 
local v94=v58:Label("Trạng Thái Đảo: ");
task.
spawn(
function() 
while task.wait() 
do pcall(
function() 
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then v94:Set("Đảo Núi Lửa : Có!");
else v94:Set("Đảo Núi Lửa : Không");
end 
end);
end 
end);
v58:Button("Xoá Dung Nham Ở Đảo Núi Lửa",
function() 
for v880,v881 in pairs(game.Workspace:GetDescendants()) 
do 
if (v881.Name=="Lava") then v881:Destroy();
end 
end 
for v882,v883 in pairs(game.ReplicatedStorage:GetDescendants()) 
do 
if (v883.Name=="Lava") then v883:Destroy();
end 
end 
end);
v58:Button("Lấp Năm Châm",
function() 
local v489={"CraftItem","Craft","Volcanic Magnet"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v489));
end);
v58:Toggle("Bay Đến Đảo Tiki",false,
function(v490) _G.TpSpy=v490;
StopTween(_G.TpSpy);
task.
spawn(
function() 
while _G.TpSpy 
do task.wait();
topos(CFrame.new( -16927.451171875,9.0863618850708,433.8642883300781));
end 
end);
end);
v58:Toggle("Tìm Đảo Núi Lửa",false,
function(v491) _G.AutoFindPrehistoric=v491;
end);
local v95={};
local v96=game:GetService("Players");
local v97=game:GetService("RunService");
local v98=game:GetService("VirtualInputManager");
local v99=game:GetService("Workspace");
local v100=350;
game:GetService("RunService").RenderStepped:Connect(
function() 
for v884,v885 in pairs(v95) 
do 
if (v885 and v885.Parent and (v885.Name=="VehicleSeat") and  not v885.Occupant) then v95[v884]=v885;
end 
end 
end);
local 
function v101() 
for v886,v887 in pairs(v95) 
do 
if (v887 and v887.Parent and (v887.Name=="VehicleSeat") and  not v887.Occupant) then topos(v887.CFrame);
end 
end 
end 
local v48=false;
local v102=false;
v97.RenderStepped:Connect(
function() 
if  not _G.AutoFindPrehistoric then v102=false;
return;
end 
local v492=v96.LocalPlayer;
local v493=v492.Character;
if ( not v493 or  not v493:FindFirstChild("Humanoid")) then 
return;
end 
local 
function v494() 
if v48 then 
return;
end v48=true;
for v1802,v1803 in pairs(v95) 
do 
if (v1803 and v1803.Parent and (v1803.Name=="VehicleSeat") and  not v1803.Occupant) then topos(v1803.CFrame);
break;
end 
end v48=false;
end 
local v495=v493.Humanoid;
local v496=false;
local v497=nil;
for v888,v889 in pairs(v99.Boats:GetChildren()) 
do 
local v890=v889:FindFirstChild("VehicleSeat");
if (v890 and (v890.Occupant==v495)) then v496=true;
v497=v890;
v95[v889.Name]=v890;
elseif (v890 and (v890.Occupant==nil)) then v494();
end 
end 
if  not v496 then 
return;
end v497.MaxSpeed=v100;
v497.CFrame=CFrame.new(Vector3.new(v497.Position.X,v497.Position.Y,v497.Position.Z)) * v497.CFrame.Rotation ;
v98:SendKeyEvent(true,"W",false,game);
for v891,v892 in pairs(v99.Boats:GetDescendants()) 
do 
if v892:IsA("BasePart") then v892.CanCollide=false;
end 
end 
for v893,v894 in pairs(v493:GetDescendants()) 
do 
if v894:IsA("BasePart") then v894.CanCollide=false;
end 
end 
local v500={"ShipwreckIsland","SandIsland","TreeIsland","TinyIsland","MysticIsland","KitsuneIsland","FrozenDimension"};
for v895,v896 in ipairs(v500) 
do 
local v897=v99.Map:FindFirstChild(v896);
if (v897 and v897:IsA("Model")) then v897:Destroy();
end 
end 
local v501=v99.Map:FindFirstChild("PrehistoricIsland");
if v501 then v98:SendKeyEvent(false,"W",false,game);
_G.AutoFindPrehistoric=false;
if  not v102 then v102=true;
end 
return;
end 
end);
v58:Toggle("Bay Lại Đầu Lâu Đảo Núi Lửa",false,
function(v502) _G.TpPrehistoric=v502;
StopTween(_G.TpPrehistoric);
end);
spawn(
function() 
local v503;
while  not v503 
do v503=game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
wait();
end 
while wait() 
do 
if _G.TpPrehistoric then 
local v1935=game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
if v1935 then 
local v2127=v1935:FindFirstChild("Core") and v1935.Core:FindFirstChild("PrehistoricRelic") ;
local v2128=v2127 and v2127:FindFirstChild("Skull") ;
if v2128 then topos(CFrame.new(v2128.Position));
_G.TpPrehistoric=false;
end 
end 
end 
end 
end);
v58:Toggle("Đánh Golem",false,
function(v504) _G.KillGolem=v504;
StopTween(_G.KillGolem);
end);
v58:Toggle("Giết Golem Aura",false,
function(v505) _G.Kill_Aura=v505;
end);
spawn(
function() 
while wait() 
do 
if (_G.KillGolem and World3) then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then 
for v2390,v2391 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2391.Name=="Lava Golem") then 
if (v2391:FindFirstChild("Humanoid") and v2391:FindFirstChild("HumanoidRootPart") and (v2391.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
v2391.HumanoidRootPart.CanCollide=false;
v2391.Humanoid.WalkSpeed=0;
v2391.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2391.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.KillGolem or  not v2391.Parent or (v2391.Humanoid.Health<=0)  
end 
end 
end else UnEquipWeapon(_G.SelectWeapon);
if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
end 
end 
end);
end 
end 
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Kill_Aura then 
local v2044=game:GetService("Players").LocalPlayer;
local v2045=game:GetService("Workspace").Enemies:GetChildren();
local v2046=v2044.Character and v2044.Character:FindFirstChild("HumanoidRootPart") and v2044.Character.HumanoidRootPart.Position ;
if v2046 then 
for v2392,v2393 in pairs(v2045) 
do 
if (v2393:FindFirstChild("Humanoid") and v2393:FindFirstChild("HumanoidRootPart") and (v2393.Humanoid.Health>0)) then 
local v2745=(v2393.HumanoidRootPart.Position-v2046).Magnitude;
if (v2745<=1000) then pcall(
function() 
repeat wait();
sethiddenproperty(v2044,"SimulationRadius",math.huge);
v2393.Humanoid.Health=0;
v2393.HumanoidRootPart.CanCollide=false;
until  not _G.Kill_Aura or  not v2393.Parent or (v2393.Humanoid.Health<=0)  
end);
end 
end 
end 
end 
end 
end 
end);
end);
v58:Toggle("Tự Động Lấp Núi Lửa",false,
function(v506) _G.DefendVolcano=v506;
StopTween(_G.DefendVolcano);
end);
local 
function v103(v507) game:GetService("VirtualInputManager"):SendKeyEvent(true,v507,false,game);
game:GetService("VirtualInputManager"):SendKeyEvent(false,v507,false,game);
end 
local 
function v104() 
local v508=game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
if (v508 and v508:IsA("Model")) then v508:Destroy();
end 
local v509=game.Workspace.Map:FindFirstChild("PrehistoricIsland");
if v509 then 
for v1936,v1937 in pairs(v509:GetDescendants()) 
do 
if (v1937:IsA("Part") and v1937.Name:lower():find("lava")) then v1937:Destroy();
end 
end 
end 
local v510=game.Workspace.Map:FindFirstChild("PrehistoricIsland");
if v510 then 
for v1938,v1939 in pairs(v510:GetDescendants()) 
do 
if v1939:IsA("Model") then 
for v2177,v2178 in pairs(v1939:GetDescendants()) 
do 
if (v2178:IsA("MeshPart") and v2178.Name:lower():find("lava")) then v2178:Destroy();
end 
end 
end 
end 
end 
end 
local 
function v105() 
local v511=game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
for v898,v899 in pairs(v511:GetChildren()) 
do 
if v899:IsA("Model") then 
local v1940=v899:FindFirstChild("volcanorock");
if (v1940 and v1940:IsA("MeshPart")) then 
local v2129=v1940.Color;
if ((v2129==Color3.fromRGB(185,53,56)) or (v2129==Color3.fromRGB(185,53,57))) then 
return v1940;
end 
end 
end 
end 
return nil;
end 
local 
function v106(v512) 
local v513=game.Players.LocalPlayer;
local v514=v513.Backpack;
for v900,v901 in pairs(v514:GetChildren()) 
do 
if (v901:IsA("Tool") and (v901.ToolTip==v512)) then v901.Parent=v513.Character;
for v2047,v2048 in ipairs({"Z","X","C","V","F"}) 
do wait();
pcall(
function() v103(v2048);
end);
end v901.Parent=v514;
break;
end 
end 
end 
spawn(
function() 
while wait() 
do 
if _G.DefendVolcano then AutoHaki();
pcall(v104);
local v1943=v105();
if v1943 then 
local v2130=CFrame.new(v1943.Position);
topos(v2130);
local v2131=v1943.Color;
if ((v2131~=Color3.fromRGB(185,53,56)) and (v2131~=Color3.fromRGB(185,53,57))) then v1943=v105();
else 
local v2394=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
local v2395=(v2394-v1943.Position).Magnitude;
if (v2395<=1) then 
if _G.UseMelee then v106("Melee");
end 
if _G.UseSword then v106("Sword");
end 
if _G.UseGun then v106("Gun");
end 
end _G.TpPrehistoric=false;
end else _G.TpPrehistoric=true;
end 
end 
end 
end);
v58:Toggle("Lụm Xương",false,
function(v515) _G.CollectBone=v515;
end);
spawn(
function() 
while wait() 
do 
if _G.CollectBone then 
for v2049,v2050 in pairs(workspace:GetDescendants()) 
do 
if (v2050:IsA("BasePart") and (v2050.Name=="DinoBone")) then topos(CFrame.new(v2050.Position));
end 
end 
end 
end 
end);
v58:Toggle("Lụm Trứng",false,
function(v516) _G.CollectEgg=v516;
end);
spawn(
function() 
while wait() 
do 
if _G.CollectEgg then 
local v1944=workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren();
if ( #v1944>0) then 
local v2132=v1944[math.random(1, #v1944)];
if (v2132:IsA("Model") and v2132.PrimaryPart) then topos(v2132.PrimaryPart.CFrame);
local v2396=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
local v2397=v2132.PrimaryPart.Position;
local v2398=(v2396-v2397).Magnitude;
if (v2398<=1) then game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game);
wait(1.5);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game);
end 
end 
end 
end 
end 
end);
v58:Seperator("Cài Đặt");
v58:Toggle("Sử Dụng Võ",true,
function(v517) _G.UseMelee=v517;
end);
v58:Toggle("Sử Dụng Kiếm",false,
function(v518) _G.UseSword=v518;
end);
v58:Toggle("Sử Dụng Súng",false,
function(v519) _G.UseGun=v519;
end);
v60:Seperator("Định Vị");
v60:Toggle("Định Vị Người Chơi",false,
function(v520) ESPPlayer=v520;
UpdatePlayerChams();
end);
v60:Toggle("Định Vị Đảo Kitsune",false,
function(v521) IslandESP=v521;
while IslandESP 
do wait();
UpdateIslandESPKitsune();
end 
end);
function UpdateIslandESPKitsune() 
for v902,v903 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) 
do pcall(
function() 
if IslandESP then 
if (v903.Name~="NeonShrinePart") then 
if  not v903:FindFirstChild("IslandESP") then 
local v2592=Instance.new("BillboardGui",v903);
v2592.Name="IslandESP";
v2592.ExtentsOffset=Vector3.new(0,1,0);
v2592.Size=UDim2.new(1,200,1,30);
v2592.Adornee=v903;
v2592.AlwaysOnTop=true;
local v2598=Instance.new("TextLabel",v2592);
v2598.Font="Code";
v2598.FontSize="Size14";
v2598.TextWrapped=true;
v2598.Size=UDim2.new(1,0,1,0);
v2598.TextYAlignment="Top";
v2598.BackgroundTransparency=1;
v2598.TextStrokeTransparency=0.5;
v2598.TextColor3=Color3.fromRGB(80,245,245);
v2598.Text="Kitsune Island";
else v903['IslandESP'].TextLabel.Text="Kitsune Island";
end 
end elseif v903:FindFirstChild("IslandESP") then v903:FindFirstChild("IslandESP"):Destroy();
end 
end);
end 
end v60:Toggle("Định Vị Rương",false,
function(v522) ChestESP=v522;
UpdateChestChams();
end);
v60:Toggle("Định Vị Trái Ác Quỷ",false,
function(v523) DevilFruitESP=v523;
while DevilFruitESP 
do wait();
UpdateDevilChams();
end 
end);
v60:Toggle("Định Vị Trái Cây",RealFruitESP,
function(v524) RealFruitESP=v524;
UpdateRealFruitChams();
end);
v60:Toggle("Định Vị Hoa",false,
function(v525) FlowerESP=v525;
UpdateFlowerChams();
end);
spawn(
function() 
while wait() 
do 
if FlowerESP then UpdateFlowerChams();
end 
if DevilFruitESP then UpdateDevilChams();
end 
if ChestESP then UpdateChestChams();
end 
if ESPPlayer then UpdatePlayerChams();
end 
if RealFruitESP then UpdateRealFruitChams();
end 
end 
end);
v60:Toggle("Định Vị Đảo",IslandESP,
function(v526) IslandESP=v526;
while IslandESP 
do wait();
UpdateIslandESP();
end 
end);
v60:Toggle("Định Vị Đảo Bí Ẩn",false,
function(v527) MirageIslandESP=v527;
while MirageIslandESP 
do wait();
UpdateIslandMirageESP();
end 
end);
v60:Seperator("Chơi khăm");
v60:Button("Mưa Trái",
function() 
for v904,v905 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) 
do v905.Parent=game.Workspace.Map;
v905:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50,50),100,math.random( -50,50)) );
if v905.Fruit:FindFirstChild("AnimationController") then v905.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v905.Fruit:FindFirstChild("Idle")):Play();
end v905.Handle.Touched:Connect(
function(v1804) 
if (v1804.Parent==game.Players.LocalPlayer.Character) then v905.Parent=game.Players.LocalPlayer.Backpack;
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v905);
end 
end);
end 
end);
v60:Button("Làm Giả Cấp/Beli/Kinh Nghiệm",
function() 
local v528=game:GetService("Players").LocalPlayer;
local v529=require(game:GetService("ReplicatedStorage").Notification);
local v530=v528:WaitForChild("Data");
local v531=require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
local v532=require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
local v533=require(game:GetService("ReplicatedStorage").Util.Sound);
local v534=game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
function v129(v908) 
local v909=v908;
while true 
do 
local v1805,v1806=string.gsub(v909,"^(-?%d+)(%d%d%d)","%1,%2");
v909=v1805;
if (v1806==0) then break;
end 
end 
return v909;
end v529.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
v529.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
v529.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
v528.Data.Exp.Value=999999999999;
v528.Data.Beli.Value=v528.Data.Beli.Value + 999999999999 ;
delay=0;
count=0;
while (v528.Data.Exp.Value-v531(v530.Level.Value))>0  
do v528.Data.Exp.Value=v528.Data.Exp.Value-v531(v530.Level.Value) ;
v528.Data.Level.Value=v528.Data.Level.Value + 1 ;
v528.Data.Points.Value=v528.Data.Points.Value + 3 ;
v532({v528});
v533.Play(v533,v534.Value);
v529.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v528.Data.Level.Value   .. ")" ):Display();
count=count + 1 ;
if (count>=5) then delay=tick();
count=0;
wait(2);
end 
end 
end);
v60:Textbox("Làm Giả Cấp","Nhập",true,
function(v537) game:GetService("Players").LocalPlayer.Data.Level.Value=v537;
end);
v60:Textbox("Làm Giả Kinh Nghiệm","Nhập",true,
function(v539) game:GetService("Players").LocalPlayer.Data.Exp.Value=v539;
end);
v60:Textbox("Làm Giả Tiền","Nhập",true,
function(v541) game:GetService("Players").LocalPlayer.Data.Beli.Value=v541;
end);
v60:Textbox("Làm Giả Điểm Tím","Nhập",true,
function(v543) game:GetService("Players").LocalPlayer.Data.Fragments.Value=v543;
end);
v60:Textbox("Làm Giả Điểm","Nhập",true,
function(v545) game:GetService("Players").LocalPlayer.Data.Points.Value=v545;
end);
v60:Textbox("Làm Giả Tiền Thưởng","Nhập",true,
function(v547) game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value=v547;
end);
v60:Seperator("Điểm nổi bật");
v60:Toggle("Hiển thị trò chuyện",_G.chat,
function(v549) _G.chat=v549;
if (_G.chat==true) then 
local v1807=game:GetService("StarterGui");
v1807:SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false);
elseif (_G.chat==false) then 
local v2053=game:GetService("StarterGui");
v2053:SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true);
end 
end);
v60:Toggle("Hiển thị bảng xếp hạng",_G.leaderboard,
function(v550) _G.leaderboard=v550;
if (_G.leaderboard==true) then 
local v1808=game:GetService("StarterGui");
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false);
elseif (_G.leaderboard==false) then 
local v2054=game:GetService("StarterGui");
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,true);
end 
end);
v60:Seperator("Gian lận");
v60:Button("Mở khóa Buso",
function() 
local v551="Buso";
if (type(v551)=="string") then game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v551);
elseif (type(v551)=="table") then 
for v2133,v2134 in next,v551 
do game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v2134);
end 
end 
end);
v60:Button("Mở Khoá Soru",
function() 
local v552="Soru";
if (type(v552)=="string") then game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v552);
elseif (type(v552)=="table") then 
for v2135,v2136 in next,v552 
do game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v2136);
end 
end 
end);
v60:Button("Mở Khoá Geppo",
function() 
local v553="Geppo";
if (type(v553)=="string") then game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v553);
elseif (type(v553)=="table") then 
for v2137,v2138 in next,v553 
do game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v2138);
end 
end 
end);
v60:Button("Thu phóng tối đa",
function() 
while wait() 
do game.Players.LocalPlayer.CameraMaxZoomDistance=9223372036854718;
end 
end);
v60:Button("Hiển Thị Tài Khoản",
function(v554) 
local v555=require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
local v556=game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
local v557={};
local v558={"Mythical","Legendary","Rare","Uncommon","Common"};
local v559={Common=Color3.fromRGB(179,179,179),Uncommon=Color3.fromRGB(92,140,211),Rare=Color3.fromRGB(140,82,255),Legendary=Color3.fromRGB(213,43,228),Mythical=Color3.fromRGB(238,47,50)};
function GetRaity(v914) 
for v1809,v1810 in pairs(v559) 
do 
if (v1810==v914) then 
return v1809;
end 
end 
end 
for v915,v916 in pairs(v556) 
do v557[v916.Name]=v916;
end 
local v560= #getupvalue(v555.UpdateRender,4);
local v561={};
local v562={};
local v563=0;
while v563<v560  
do 
local v918=0;
while (v918<25000) and (v563<v560)  
do game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition=Vector2.new(0,v918);
for v1945,v1946 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) 
do 
if (v1946:IsA("Frame") and  not v561[v1946.ItemName.Text] and (v1946.ItemName.Visible==true)) then 
local v2139=GetRaity(v1946.Background.BackgroundColor3);
if v2139 then print("Rac");
if  not v562[v2139] then v562[v2139]={};
end table.insert(v562[v2139],v1946:Clone());
end v563=v563 + 1 ;
v561[v1946.ItemName.Text]=true;
end 
end v918=v918 + 20 ;
end wait();
end 
function GetXY(v919) 
return v919 * 100 ;
end 
local v564=Instance.new("UIListLayout");
v564.FillDirection=Enum.FillDirection.Vertical;
v564.SortOrder=2;
v564.Padding=UDim.new(0,10);
local v569=Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat);
v569.BackgroundTransparency=1;
v569.Size=UDim2.new(0.5,0,1,0);
v564.Parent=v569;
local v573=Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat);
v573.BackgroundTransparency=1;
v573.Size=UDim2.new(0.5,0,1,0);
v573.Position=UDim2.new(0.6,0,0,0);
v564:Clone().Parent=v573;
for v920,v921 in pairs(v562) 
do 
local v922=Instance.new("Frame",v569);
v922.BackgroundTransparency=1;
v922.Size=UDim2.new(1,0,0,0);
v922.LayoutOrder=table.find(v558,v920);
local v926=Instance.new("Frame",v573);
v926.BackgroundTransparency=1;
v926.Size=UDim2.new(1,0,0,0);
v926.LayoutOrder=table.find(v558,v920);
local v930=Instance.new("UIGridLayout",v922);
v930.CellPadding=UDim2.new(0.005,0,0.005,0);
v930.CellSize=UDim2.new(0,70,0,70);
v930.FillDirectionMaxCells=100;
v930.FillDirection=Enum.FillDirection.Horizontal;
local v936=v930:Clone();
v936.Parent=v926;
for v1812,v1813 in pairs(v921) 
do 
if (v557[v1813.ItemName.Text] and v557[v1813.ItemName.Text].Mastery) then 
if (v1813.ItemLine2.Text~="Accessory") then 
local v2179=v1813.ItemName:Clone();
v2179.BackgroundTransparency=1;
v2179.TextSize=10;
v2179.TextXAlignment=2;
v2179.TextYAlignment=2;
v2179.ZIndex=5;
v2179.Text=v557[v1813.ItemName.Text].Mastery;
v2179.Size=UDim2.new(0.5,0,0.5,0);
v2179.Position=UDim2.new(0.5,0,0.5,0);
v2179.Parent=v1813;
end v1813.Parent=v922;
elseif (v1813.ItemLine2.Text=="Blox Fruit") then v1813.Parent=v926;
end 
end v922.AutomaticSize=2;
v926.AutomaticSize=2;
end 
local v578={Superhuman=Vector2.new(3,2),GodHuman=Vector2.new(3,2),DeathStep=Vector2.new(4,3),ElectricClaw=Vector2.new(2,0),SharkmanKarate=Vector2.new(0,0),DragonTalon=Vector2.new(1,5)};
local v579=Instance.new("Frame",v569);
v579.BackgroundTransparency=1;
v579.Size=UDim2.new(1,0,0,0);
v579.LayoutOrder=table.find(v558,k);
v579.AutomaticSize=2;
v579.LayoutOrder=100;
local v564=Instance.new("UIGridLayout",v579);
v564.CellPadding=UDim2.new(0.005,0,0.005,0);
v564.CellSize=UDim2.new(0,70,0,70);
v564.FillDirectionMaxCells=100;
v564.FillDirection=Enum.FillDirection.Horizontal;
local v555={"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"};
for v940,v941 in pairs(v555) 
do 
if (v578[v941] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v941 ,true)==1)) then 
local v1947=Instance.new("ImageLabel",v579);
v1947.Image="rbxassetid://9945562382";
v1947.ImageRectSize=Vector2.new(100,100);
v1947.ImageRectOffset=v578[v941] * 100 ;
end 
end 
function formatNumber(v942) 
return tostring(v942):reverse():gsub("%d%d%d","%1,"):reverse():gsub("^,","");
end game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position=UDim2.new(0,800,0,500);
game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position=UDim2.new(0,800,0,550);
local v590=game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
v590.Parent=game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
v590.Position=UDim2.new(0,800,0.63,0);
local v594=formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
v590.Text="Ã†â€™"   .. v594 ;
print("Done");
pcall(
function() game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy();
end);
pcall(
function() game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy();
end);
pcall(
function() game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy();
end);
for v943,v944 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) 
do 
if v944:IsA("ImageButton") then v944:Destroy();
end 
end pcall(
function() game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
end);
end);
v60:Seperator("Đồ Hoạ");
v60:Button("Xoá Sương Mù ( Biển 3 )",
function(v596) game:GetService("Lighting").LightingLayers:Destroy();
game:GetService("Lighting").Sky:Destroy();
end);
v60:Toggle("Xoá Sương Mù",RemoveFog,
function(v597) RemoveFog=v597;
if  not RemoveFog then 
return;
end 
while RemoveFog 
do wait();
game.Lighting.FogEnd=8999999488;
if  not RemoveFog then game.Lighting.FogEnd=2500;
end 
end 
end);
v60:Toggle("Loại Bỏ Thiệt Hại",true,
function() 
for v946,v947 in pairs(game.Workspace:GetDescendants()) 
do 
if (v947.Name=="DamageCounter") then v947:Destroy();
end 
end 
for v948,v949 in pairs(game.ReplicatedStorage:GetDescendants()) 
do 
if (v949.Name=="DamageCounter") then v949:Destroy();
end 
end 
end);
v60:Button("Mở Khoá FPS",
function() setfpscap(9999999);
end);
v60:Button("Giảm Lag",
function() 
for v950,v951 in pairs(game.Workspace.Map:GetDescendants()) 
do 
if ((v951.Name=="Tavern") or (v951.Name=="SmileFactory") or (v951.Name=="Tree") or (v951.Name=="Rocks") or (v951.Name=="PartHouse") or (v951.Name=="Hotel") or (v951.Name=="WallPiece") or (v951.Name=="MiddlePillars") or (v951.Name=="Cloud") or (v951.Name=="PluginGrass") or (v951.Name=="BigHouse") or (v951.Name=="SmallHouse") or (v951.Name=="Detail")) then v951:Destroy();
end 
end 
for v952,v953 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) 
do 
if ((v953.Name=="Tavern") or (v953.Name=="SmileFactory") or (v953.Name=="Tree") or (v953.Name=="Rocks") or (v953.Name=="PartHouse") or (v953.Name=="Hotel") or (v953.Name=="WallPiece") or (v953.Name=="MiddlePillars") or (v953.Name=="Cloud") or (v953.Name=="PluginGrass") or (v953.Name=="BigHouse") or (v953.Name=="SmallHouse") or (v953.Name=="Detail")) then v953:Destroy();
end 
end 
for v954,v955 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) 
do 
if (v955:IsA("Accessory") or (v955.Name=="Pants") or (v955.Name=="Shirt")) then v955:Destroy();
end 
end 
local v598=true;
local v599=game;
local v600=v599.Workspace;
local v601=v599.Lighting;
local v602=v600.Terrain;
v602.WaterWaveSize=0;
v602.WaterWaveSpeed=0;
v602.WaterReflectance=0;
v602.WaterTransparency=0;
v601.GlobalShadows=false;
v601.FogEnd=8999999488;
v601.Brightness=0;
settings().Rendering.QualityLevel="Level01";
for v956,v957 in pairs(v599:GetDescendants()) 
do 
if (v957:IsA("Part") or v957:IsA("Union") or v957:IsA("CornerWedgePart") or v957:IsA("TrussPart")) then v957.Material="Plastic";
v957.Reflectance=0;
elseif (v957:IsA("Decal") or (v957:IsA("Texture") and v598)) then v957.Transparency=1;
elseif (v957:IsA("ParticleEmitter") or v957:IsA("Trail")) then v957.Lifetime=NumberRange.new(0);
elseif v957:IsA("Explosion") then v957.BlastPressure=1;
v957.BlastRadius=1;
elseif (v957:IsA("Fire") or v957:IsA("SpotLight") or v957:IsA("Smoke") or v957:IsA("Sparkles")) then v957.Enabled=false;
elseif v957:IsA("MeshPart") then v957.Material="Plastic";
v957.Reflectance=0;
v957.TextureID=10385902758728956;
end 
end 
for v958,v959 in pairs(v601:GetChildren()) 
do 
if (v959:IsA("BlurEffect") or v959:IsA("SunRaysEffect") or v959:IsA("ColorCorrectionEffect") or v959:IsA("BloomEffect") or v959:IsA("DepthOfFieldEffect")) then v959.Enabled=false;
end 
end 
end);
v60:Seperator("Khả năng");
v60:Toggle("Né tránh không có thời gian hồi chiêu",false,
function(v611) nododgecool=v611;
NoDodgeCool();
end);
v60:Toggle("Năng lượng vô hạn",false,
function(v612) InfiniteEnergy=v612;
v47=v46.Character.Energy.Value;
end);
v60:Toggle("Tự Động Bậc V3",_G.ActiveV3,
function(v614) _G.ActiveV3=v614;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.ActiveV3 then game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
end 
end 
end);
end);
v60:Toggle("Tự Động Bậc V4",_G.ActiveV4,
function(v615) _G.ActiveV4=v615;
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.ActiveV4 then game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game);
end 
end);
end 
end);
v60:Toggle("Khả năng vô hạn",false,
function(v616) InfAbility=v616;
if (value==false) then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
end 
end);
spawn(
function() 
while wait() 
do 
if InfAbility then InfAb();
end 
end 
end);
v60:Toggle("Phạm vi quan sát vô hạn",getgenv().InfiniteObRange,
function(v617) getgenv().InfiniteObRange=v617;
local v619=game:GetService("Players").LocalPlayer.VisionRadius.Value;
while getgenv().InfiniteObRange 
do wait();
local v960=game:GetService("Players").LocalPlayer;
local v961=v960.Character;
local v962=v960.VisionRadius;
if v960 then 
if (v961.Humanoid.Health<=0) then wait(5);
end v962.Value=math.huge;
elseif ((getgenv().InfiniteObRange==false) and v960) then v962.Value=v619;
end 
end 
end);
v60:Toggle("Geppo vô hạn",getgenv().InfGeppo,
function(v620) getgenv().InfGeppo=v620;
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if getgenv().InfGeppo then 
for v2143,v2144 in next,getgc() 
do 
if game:GetService("Players").LocalPlayer.Character.Geppo then 
if ((typeof(v2144)=="
function") and (getfenv(v2144).script==game:GetService("Players").LocalPlayer.Character.Geppo)) then 
for v2811,v2812 in next,getupvalues(v2144) 
do 
if (tostring(v2811)=="9") then 
repeat wait(0.1);
setupvalue(v2144,v2811,0);
until  not getgenv().InfGeppo or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health<=0)  
end 
end 
end 
end 
end 
end 
end);
end 
end);
v60:Toggle("vô hạn Soru",_G.Infsoru,
function(v622) _G.Infsoru=v622;
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")~=nil)) then 
for v2145,v2146 in next,getgc() 
do 
if game:GetService("Players").LocalPlayer.Character.Soru then 
if ((typeof(v2146)=="
function") and (getfenv(v2146).script==game:GetService("Players").LocalPlayer.Character.Soru)) then 
for v2813,v2814 in next,getupvalues(v2146) 
do 
if (typeof(v2814)=="table") then 
repeat wait(0.1);
v2814.LastUse=0;
until  not _G.Infsoru or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health<=0)  
end 
end 
end 
end 
end 
end 
end);
end 
end);
v60:Toggle("Đi Trên Nước",true,
function(v623) _G.WalkWater=v623;
end);
spawn(
function() 
while task.wait() 
do pcall(
function() 
if _G.WalkWater then game:GetService("Workspace").Map["WaterBase-Plane"].Size=Vector3.new(1000,112,1000);
else game:GetService("Workspace").Map["WaterBase-Plane"].Size=Vector3.new(1000,80,1000);
end 
end);
end 
end);
v60:Toggle("Xuyên Tường",_G.NoClip,
function(v624) _G.NoClip=v624;
end);
spawn(
function() 
while wait() 
do 
if sethiddenproperty then sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",100);
end 
if setscriptable then setscriptable(game.Players.LocalPlayer,"SimulationRadius",true);
game.Players.LocalPlayer.SimulationRadius=math.huge * math.huge ,(((((((((math.huge * math.huge * 0)/0) * 0)/0) * 0)/0) * 0)/0) * 0)/0 ;
end 
end 
end);
v60:Button("Xoá Dung Nham",
function() 
for v963,v964 in pairs(game.Workspace:GetDescendants()) 
do 
if (v964.Name=="Lava") then v964:Destroy();
end 
end 
for v965,v966 in pairs(game.ReplicatedStorage:GetDescendants()) 
do 
if (v966.Name=="Lava") then v966:Destroy();
end 
end 
end);
local v107=v59:Label("Người Chơi");
spawn(
function() 
while wait() 
do pcall(
function() 
for v1958,v1959 in pairs(game:GetService("Players"):GetPlayers()) 
do 
if (v1958==12) then v107:Set("Players:"   .. " "   .. v1958   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
elseif (v1958==1) then v107:Set("Player:"   .. " "   .. v1958   .. " "   .. "/"   .. " "   .. "12" );
else v107:Set("Players:"   .. " "   .. v1958   .. " "   .. "/"   .. " "   .. "12" );
end 
end 
end);
end 
end);
Playerslist={};
for v625,v626 in pairs(game:GetService("Players"):GetChildren()) 
do table.insert(Playerslist,v626.Name);
end 
local v108=v59:Dropdown("Chọn Người Chơi",Playerslist,
function(v627) _G.SelectPly=v627;
end);
v59:Button("Làm Mới Người Chơi",
function() Playerslist={};
v108:Clear();
for v967,v968 in pairs(game:GetService("Players"):GetChildren()) 
do v108:Add(v968.Name);
end 
end);
v59:Toggle("Quan Sát Người Chơi",false,
function(v628) SpectatePlys=v628;
local v629=game:GetService("Players").LocalPlayer.Character.Humanoid;
local v630=game:GetService("Players"):FindFirstChild(_G.SelectPly);
repeat wait(0.1);
game:GetService("Workspace").Camera.CameraSubject=game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
until SpectatePlys==false  game:GetService("Workspace").Camera.CameraSubject=game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v59:Toggle("Bay Đến Người Chơi",false,
function(v633) _G.TeleportPly=v633;
pcall(
function() 
if _G.TeleportPly then 
repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame);
wait();
until _G.TeleportPly==false  
end StopTween(_G.TeleportPly);
end);
end);
v59:Toggle("Bay Đến Người Chơi Bypass",false,
function(v634) _G.Teleport=v634;
if (_G.Teleport==false) then game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size=Vector3.new(2,2,1);
end 
while _G.Teleport 
do task.wait();
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0) ;
game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size=Vector3.new(60,60,60);
game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672));
end 
end);
v59:Seperator("Nhiệm Vụ");
v59:Button("Nhận Nhiệm Vụ Thợ Săn",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v59:Toggle("Giết Người Chơi Nhận Nhiệm Vụ",_G.PlayerHunter,
function(v635) _G.PlayerHunter=v635;
StopTween(_G.PlayerHunter);
end);
spawn(
function() game:GetService("RunService").Heartbeat:connect(
function() pcall(
function() 
if _G.PlayerHunter then 
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
end 
end 
end);
end);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.PlayerHunter then 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible==true) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
end 
end 
end 
end);
end);
spawn(
function() 
while wait() 
do 
if _G.PlayerHunter then 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false) then wait(0.5);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
else 
for v2191,v2192 in pairs(game:GetService("Workspace").Characters:GetChildren()) 
do 
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v2192.Name) then 
repeat wait();
if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then 
local v2852={[1]="Buso"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2852));
end EquipWeapon(_G.SelectWeapon);
Useskill=true;
topos(v2192.HumanoidRootPart.CFrame * CFrame.new(1,7,3) );
v2192.HumanoidRootPart.Size=Vector3.new(60,60,60);
game:GetService("VirtualUser"):CaptureController();
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672));
until (_G.PlayerHunter==false) or (v2192.Humanoid.Health<=0)  Useskill=false;
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
end 
end 
end 
end 
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if Useskill then game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
wait(0.1);
game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
end 
end);
end 
end);
v59:Seperator("PvP");
v59:Toggle("Aimbot gần nhất",false,
function(v636) _G.AimNearest=v636;
end);
local v96=game:GetService("Players");
local v46=v96.LocalPlayer;
local v97=game:GetService("RunService");
local 
function v109() 
local v637=nil;
local v638=math.huge;
for v973,v974 in pairs(v96:GetPlayers()) 
do 
if ((v974~=v46) and v974.Character and v974.Character:FindFirstChild("HumanoidRootPart")) then 
if ((v974.Team~=v46.Team) and (v974.Team.Name~="Marines")) then 
local v2147=v974.Character.HumanoidRootPart.Position;
local v2148=(v46.Character.HumanoidRootPart.Position-v2147).Magnitude;
if (v2148<v638) then v637=v974;
v638=v2148;
end 
end 
end 
end 
return v637;
end v97.RenderStepped:Connect(
function() 
if _G.AimNearest then 
local v1815=v109();
if v1815 then _G.Aim_Players=v1815;
end 
end 
end);
local v110=getrawmetatable(game);
local v111=v110.__namecall;
setreadonly(v110,false);
v110.__namecall=newcclosure(
function(...) 
local v639=getnamecallmethod();
local v640={...};
if (tostring(v639)=="FireServer") then 
if (tostring(v640[1])=="RemoteEvent") then 
if ((tostring(v640[2])~="true") and (tostring(v640[2])~="false")) then 
if (_G.AimNearest and _G.Aim_Players) then v640[2]=_G.Aim_Players.Character.HumanoidRootPart.Position;
return v111(unpack(v640));
end 
end 
end 
end 
return v111(...);
end);
setreadonly(v110,true);
v59:Toggle("Enabled PvP",false,
function(v641) _G.EnabledPvP=v641;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.EnabledPvP then 
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible==true) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
end 
end 
end 
end);
end);
v59:Button("Đặt vị trí Hồi Sinh",
function() _G.Pos_Spawn=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
Com();
end);
v59:Toggle("Chế độ an toàn",false,
function(v643) _G.Safe_Mode=v643;
StopTween(_G.Safe_Mode);
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Safe_Mode then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
end 
end 
end);
end);
v59:Button("hồi sinh",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates");
wait();
end);
v59:Seperator("Thống kê");
local v113=v59:Label("Điểm chỉ số");
spawn(
function() 
while wait() 
do pcall(
function() v113:Set("Điểm chỉ số: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
end);
end 
end);
local v114=v59:Label("Võ: ");
local v115=v59:Label("Phòng Thủ: ");
local v116=v59:Label("Kiếm: ");
local v117=v59:Label("Súng: ");
local v118=v59:Label("Trái: ");
spawn(
function() 
while wait() 
do pcall(
function() v114:Set("Võ: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
end);
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() v115:Set("Phòng Thủ: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
end);
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() v116:Set("Kiếm: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
end);
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() v117:Set("Súng: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
end);
end 
end);
spawn(
function() 
while wait() 
do pcall(
function() v118:Set("Trái: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
end);
end 
end);
v59:Toggle("Tự Động Nâng Chỉ Số",_G.Stats_Kaitun,
function(v644) _G.Stats_Kaitun=v644;
end);
spawn(
function() 
while wait() 
do pcall(
function() 
if _G.Stats_Kaitun then 
if World1 then 
local v2193={[1]="AddPoint",[2]="Melee",[3]=_G.Point};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2193));
elseif World2 then 
local v2610={[1]="AddPoint",[2]="Melee",[3]=_G.Point};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2610));
local v2610={[1]="AddPoint",[2]="Defense",[3]=_G.Point};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2610));
end 
end 
end);
end 
end);
v59:Toggle("Võ",false,
function(v645) melee=v645;
end);
v59:Toggle("Phòng Thủ",false,
function(v646) defense=v646;
end);
v59:Toggle("Kiếm",false,
function(v647) sword=v647;
end);
v59:Toggle("Súng",false,
function(v648) gun=v648;
end);
v59:Toggle("Trái Ác Quỷ",false,
function(v649) demonfruit=v649;
end);
PointStats=100;
spawn(
function() 
while wait() 
do 
if (game.Players.localPlayer.Data.Points.Value>=PointStats) then 
if melee then 
local v2149={[1]="AddPoint",[2]="Võ",[3]=PointStats};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2149));
end 
if defense then 
local v2150={[1]="AddPoint",[2]="Phòng Thủ",[3]=PointStats};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2150));
end 
if sword then 
local v2151={[1]="AddPoint",[2]="Kiếm",[3]=PointStats};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2151));
end 
if gun then 
local v2152={[1]="AddPoint",[2]="Súng",[3]=PointStats};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2152));
end 
if demonfruit then 
local v2153={[1]="AddPoint",[2]="Trái Ác Quỷ",[3]=PointStats};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2153));
end 
end 
end 
end);
v61:Seperator("Tập Kích");
_G.SelectChip=selectraids or "" ;
Raidslist={};
RaidsModule=require(game.ReplicatedStorage.Raids);
for v650,v651 in pairs(RaidsModule.raids) 
do table.insert(Raidslist,v651);
end 
for v652,v653 in pairs(RaidsModule.advancedRaids) 
do table.insert(Raidslist,v653);
end v61:Dropdown("Chọn Chip",Raidslist,
function(v654) _G.SelectChip=v654;
end);
v61:Toggle("Tự động chọn Đột Kích",_G.SelectDungeon,
function(v655) _G.SelectDungeon=v655;
end);
spawn(
function() 
while wait() 
do 
if _G.SelectDungeon then pcall(
function() 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then _G.SelectChip="Flame";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then _G.SelectChip="Ice";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then _G.SelectChip="Quake";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then _G.SelectChip="Light";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then _G.SelectChip="Dark";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then _G.SelectChip="String";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then _G.SelectChip="Rumble";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then _G.SelectChip="Magma";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then _G.SelectChip="Human: Buddha";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then _G.SelectChip="Sand";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then _G.SelectChip="Bird: Phoenix";
elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then _G.SelectChip="Dough";
else _G.SelectChip="Flame";
end 
end);
end 
end 
end);
v61:Toggle("Mua Chip Tự Động",_G.BuyChip,
function(v656) _G.BuyChip=v656;
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.BuyChip then 
if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then 
if  not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip);
end 
end 
end 
end 
end);
end);
v61:Button("Mua Chip Đã Chọn",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip);
end);
v61:Toggle("Tự Động Bắt Đầu Đột Kích",_G.StartRaid,
function(v657) _G.StartRaid=v657;
end);
spawn(
function() 
while wait(0.1) 
do pcall(
function() 
if _G.StartRaid then 
if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible==false) then 
if (( not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then 
if World2 then fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
elseif World3 then fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
end 
end 
end 
end 
end);
end 
end);
v61:Button("Bắt Đầu Đột Kích",
function() 
if World2 then fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
elseif World3 then fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
end 
end);
v61:Toggle("Tự Động Đánh Quái Và Qua Đảo",false,
function(v658) _G.Dungeon=v658;
StopTween(_G.Dungeon);
end);
function IsIslandRaid(v659) 
if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island "   .. v659 ) then min=4500;
for v1960,v1961 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) 
do 
if ((v1961.Name==("Island "   .. v659)) and ((v1961.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<min)) then min=(v1961.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
end 
end 
for v1962,v1963 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) 
do 
if ((v1963.Name==("Island "   .. v659)) and ((v1963.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=min)) then 
return v1963;
end 
end 
end 
end 
function getNextIsland() TableIslandsRaid={5,4,3,2,1};
for v975,v976 in pairs(TableIslandsRaid) 
do 
if (IsIslandRaid(v976) and ((IsIslandRaid(v976).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=4500)) then 
return IsIslandRaid(v976);
end 
end 
end 
function attackNearbyEnemies() 
local v660={};
for v977,v978 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v978:FindFirstChild("HumanoidRootPart") and v978:FindFirstChild("Humanoid") and (v978.Humanoid.Health>0)) then 
local v1964=(v978.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
if (v1964<=1000) then table.insert(v660,v978);
end 
end 
end 
for v979,v980 in pairs(v660) 
do 
repeat 
if (v980:FindFirstChild("Humanoid") and (v980.Humanoid.Health>0)) then EquipWeapon(_G.SelectWeapon);
topos(v980.HumanoidRootPart.CFrame * Pos );
wait(0.1);
end 
until  not v980:FindFirstChild("Humanoid") or (v980.Humanoid.Health<=0)  
end 
end 
spawn(
function() 
while wait() 
do 
if _G.Dungeon then attackNearbyEnemies();
if getNextIsland() then 
spawn(topos(getNextIsland().CFrame * CFrame.new(0,60,0) ),1);
end 
end 
end 
end);
spawn(
function() pcall(
function() 
while wait() 
do 
if _G.Kill_Aura then 
local v2059=game:GetService("Players").LocalPlayer;
local v2060=game:GetService("Workspace").Enemies:GetChildren();
local v2061=v2059.Character and v2059.Character:FindFirstChild("HumanoidRootPart") and v2059.Character.HumanoidRootPart.Position ;
if v2061 then 
for v2400,v2401 in pairs(v2060) 
do 
if (v2401:FindFirstChild("Humanoid") and v2401:FindFirstChild("HumanoidRootPart") and (v2401.Humanoid.Health>0)) then 
local v2750=(v2401.HumanoidRootPart.Position-v2061).Magnitude;
if (v2750<=1000) then pcall(
function() 
repeat wait();
sethiddenproperty(v2059,"SimulationRadius",math.huge);
v2401.Humanoid.Health=0;
v2401.HumanoidRootPart.CanCollide=false;
until  not _G.Kill_Aura or  not v2401.Parent or (v2401.Humanoid.Health<=0)  
end);
end 
end 
end 
end 
end 
end 
end);
end);
v61:Toggle("Tự động thức Tỉnh",_G.Awakener,
function(v661) _G.Awakener=v661;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.Awakener then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken");
end 
end 
end);
end);
if World2 then v61:Button("Dịch chuyển đến phòng thí nghiệm",
function() topos(CFrame.new( -6438.73535,250.645355, -4501.50684));
end);
elseif World3 then v61:Button("Dịch chuyển đến phòng thí nghiệm",
function() topos(CFrame.new( -5017.40869,314.844055, -2823.0127, -0.925743818,4.482175e-8, -0.378151238,4.5550315e-9,1,1.0737756e-7,0.378151238,9.768162e-8, -0.925743818));
end);
end 
if World2 then v61:Button("Phòng thức tỉnh",
function() topos(CFrame.new(266.227783,1.39509034,1857.00732));
end);
elseif World3 then v61:Button("Phòng thức tỉnh",
function() topos(CFrame.new( -11571.440429688,49.172668457031, -7574.7368164062));
end);
end v61:Seperator("Kiếm KoKo");
v61:Toggle("Đánh Law",_G.OderSword,
function(v662) _G.OderSword=v662;
StopTween(_G.OderSword);
end);
v61:Toggle("Đánh Law Đổi Sever",_G.OderSwordHop,
function(v663) _G.OderSwordHop=v663;
end);
spawn(
function() 
while wait() 
do 
if _G.OderSword then pcall(
function() 
if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then 
for v2402,v2403 in pairs(game:GetService("Workspace").Enemies:GetChildren()) 
do 
if (v2403.Name=="Order [Lv. 1250] [Raid Boss]") then 
if (v2403:FindFirstChild("Humanoid") and v2403:FindFirstChild("HumanoidRootPart") and (v2403.Humanoid.Health>0)) then 
repeat task.wait();
AutoHaki();
EquipWeapon(_G.SelectWeapon);
v2403.HumanoidRootPart.CanCollide=false;
v2403.Humanoid.WalkSpeed=0;
v2403.HumanoidRootPart.Size=Vector3.new(50,50,50);
topos(v2403.HumanoidRootPart.CFrame * Pos );
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge);
until  not _G.OderSword or  not v2403.Parent or (v2403.Humanoid.Health<=0)  
end 
end 
end elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2) );
elseif _G.OderSwordHop then Hop();
end 
end);
end 
end 
end);
v61:Button("Mua Chip Law",
function() 
local v664={[1]="BlackbeardReward",[2]="Microchip",[3]="2"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v664));
end);
v61:Button("Bắt Đầu Vào Đánh",
function() 
if World2 then fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
end 
end);
v62:Seperator("Thế Giới");
v62:Button("Dịch chuyển đến Biển 1",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v62:Button("Dịch chuyển đến Biển 2",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v62:Button("Dịch chuyển đến Biển 3",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v62:Seperator("Dịch chuyển nhanh");
if World1 then v62:Dropdown("Chọn Đảo",{"Đảo Trời 1","Đảo Trời 2","Đảo dưới nước","Lối vào Đảo Dưới Nước"},
function(v1816) _G.SelectFast=v1816;
end);
end 
if World2 then v62:Dropdown("Chọn Đảo",{"Biệt thự Flamingo","Phòng Flamingo","Con tàu bị nguyền rủa","Đảo thây ma"},
function(v1817) _G.SelectFast=v1817;
end);
end 
if World3 then v62:Dropdown("Chọn Đảo",{"Dinh Thự","Đảo Hydra","Pháo đài trên biển","Đảo rùa","Cướp biển xinh đẹp"},
function(v1818) _G.SelectFast=v1818;
end);
end v62:Toggle("Dịch Chuyển Đến Đảo Đã Chỉ Định",false,
function(v665) _G.TeleFast=v665;
if (_G.TeleFast==true) then 
repeat wait();
if (_G.SelectFast=="Đảo Trời 1") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4652,873, -1754));
elseif (_G.SelectFast=="Đảo Trời 2") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -7895,5547, -380));
elseif (_G.SelectFast=="Đảo dưới nước") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164,5,1820));
elseif (_G.SelectFast=="Lối vào Đảo Dưới Nước") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3865,5, -1926));
elseif (_G.SelectFast=="Biệt thự Flamingo") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -317,331,597));
elseif (_G.SelectFast=="Phòng Flamingo") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2283,15,867));
elseif (_G.SelectFast=="Con tàu bị nguyền rủa") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923,125,32853));
elseif (_G.SelectFast=="Đảo thây ma") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -6509,83, -133));
elseif (_G.SelectFast=="Dinh Thự") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -12471,374, -7551));
elseif (_G.SelectFast=="Đảo Hydra") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5756,610, -282));
elseif (_G.SelectFast=="Pháo đài trên biển") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -5092,315, -3130));
elseif (_G.SelectFast=="Đảo rùa") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -12001,332, -8861));
elseif (_G.SelectFast=="Cướp biển xinh đẹp") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5319,23, -93));
end 
until  not _G.TeleFast 
end 
end);
v62:Seperator("đảo");
if World1 then v62:Dropdown("Chọn Đảo",{"Cối xay gió","Hàng hải","Trung tâm thị trấn","Rừng","Làng cướp biển","Sa mạc","Đảo Tuyết","Ford hàng hải","Đấu trường La Mã","Đảo Trời 1","Đảo Trời 2","Đảo Trời 3","Nhà tù","Làng Magma","Đảo dưới nước","Thành phố đài phun nước"},
function(v1819) _G.SelectIsland=v1819;
end);
end 
if World2 then v62:Dropdown("Chọn Đảo",{"Quán cà phê","Đốm đầu tiên","Đảo Râu Đen","Biệt thự Flamingo","Phòng Flamingo","Khu vực xanh","Đảo thây ma","Hai ngọn núi tuyết","Punk nguy hiểm","Con tàu bị nguyền rủa","Lâu đài băng","Đảo bị lãng quên","Đảo Ussop"},
function(v1820) _G.SelectIsland=v1820;
end);
end 
if World3 then v62:Dropdown("Chọn Đảo",{"Dinh Thự","Cảng","Cây lớn","Pháo đài trên biển","Đảo Hydra","Đảo rùa","Đảo Xương","Đảo kem","Đảo Đậu Phộng","Đảo Bánh","Đảo kẹo mía","Doanh Trại Tiki"},
function(v1821) _G.SelectIsland=v1821;
end);
end v62:Toggle("Bay Đến Đảo Đã Chọn",false,
function(v666) _G.TeleportIsland=v666;
if (_G.TeleportIsland==true) then 
repeat wait();
if (_G.SelectIsland=="Trung tâm thị trấn") then topos(CFrame.new( -688,15,1585));
elseif (_G.SelectIsland=="Ford hàng hải") then topos(CFrame.new( -4810,21,4359));
elseif (_G.SelectIsland=="Hàng hải") then topos(CFrame.new( -2728,25,2056));
elseif (_G.SelectIsland=="Cối xay gió") then topos(CFrame.new(889,17,1434));
elseif (_G.SelectIsland=="Sa mạc") then topos(CFrame.new(945,21,4375));
elseif (_G.SelectIsland=="Đảo Tuyết") then topos(CFrame.new(1298,87, -1344));
elseif (_G.SelectIsland=="Làng cướp biển") then topos(CFrame.new( -1173,45,3837));
elseif (_G.SelectIsland=="Rừng") then topos(CFrame.new( -1614,37,146));
elseif (_G.SelectIsland=="Nhà tù") then topos(CFrame.new(4870,6,736));
elseif (_G.SelectIsland=="Đảo dưới nước") then topos(CFrame.new(61164,5,1820));
elseif (_G.SelectIsland=="Đấu trường La Mã") then topos(CFrame.new( -1535,7, -3014));
elseif (_G.SelectIsland=="Làng Magma") then topos(CFrame.new( -5290,9,8349));
elseif (_G.SelectIsland=="Đảo Trời 1") then topos(CFrame.new( -4814,718, -2551));
elseif (_G.SelectIsland=="Đảo Trời 2") then topos(CFrame.new( -4652,873, -1754));
elseif (_G.SelectIsland=="Đảo trời 3") then topos(CFrame.new( -7895,5547, -380));
elseif (_G.SelectIsland=="Thành phố đài phun nước") then topos(CFrame.new(5128,60,4106));
elseif (_G.SelectIsland=="Quán cà phê") then topos(CFrame.new( -382,73,290));
elseif (_G.SelectIsland=="Đốm đầu tiên") then topos(CFrame.new( -11,29,2771));
elseif (_G.SelectIsland=="Đảo Râu Đen") then topos(CFrame.new(3494,13, -3259));
elseif (_G.SelectIsland=="Biệt thự Flamingo") then topos(CFrame.new( -317,331,597));
elseif (_G.SelectIsland=="Phòng Flamingo") then topos(CFrame.new(2285,15,905));
elseif (_G.SelectIsland=="Khu vực xanh") then topos(CFrame.new( -2258,73, -2696));
elseif (_G.SelectIsland=="Đảo thây ma") then topos(CFrame.new( -5552,194, -776));
elseif (_G.SelectIsland=="Hai ngọn núi tuyết") then topos(CFrame.new(752,408, -5277));
elseif (_G.SelectIsland=="Punk nguy hiểm") then topos(CFrame.new( -5897,18, -5096));
elseif (_G.SelectIsland=="Con tàu bị nguyền rủa") then topos(CFrame.new(919,125,32869));
elseif (_G.SelectIsland=="Lâu đài băng") then topos(CFrame.new(5505,40, -6178));
elseif (_G.SelectIsland=="Đảo bị lãng quên") then topos(CFrame.new( -3050,240, -10178));
elseif (_G.SelectIsland=="Đảo Ussop") then topos(CFrame.new(4816,8,2863));
elseif (_G.SelectIsland=="Dinh Thự") then topos(CFrame.new( -12471,374, -7551));
elseif (_G.SelectIsland=="Cảng") then topos(CFrame.new( -334,7,5300));
elseif (_G.SelectIsland=="Pháo đài trên biển") then topos(CFrame.new( -5073,315, -3153));
elseif (_G.SelectIsland=="Đảo Hydra") then topos(CFrame.new(5756,610, -282));
elseif (_G.SelectIsland=="Cây lớn") then topos(CFrame.new(2681,1682, -7190));
elseif (_G.SelectIsland=="Đảo rùa") then topos(CFrame.new( -12528,332, -8658));
elseif (_G.SelectIsland=="Đảo Xương") then topos(CFrame.new( -9517,142,5528));
elseif (_G.SelectIsland=="Đảo kem") then topos(CFrame.new( -902,79, -10988));
elseif (_G.SelectIsland=="Đảo Đậu Phộng") then topos(CFrame.new( -2062,50, -10232));
elseif (_G.SelectIsland=="Đảo Bánh") then topos(CFrame.new( -1897,14, -11576));
elseif (_G.SelectIsland=="Đảo kẹo mía") then topos(CFrame.new( -1038,10, -14076));
elseif (_G.SelectIsland=="Doanh Trại Tiki") then topos(CFrame.new( -16224,9,439));
end 
until  not _G.TeleportIsland 
end StopTween(_G.TeleportIsland);
end);
v63:Seperator("Khả năng");
v63:Button("Mua Geppo [ 10,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo");
end);
v63:Button("Mua Haki Vũ Trang [ 25,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso");
end);
v63:Button("Mua Soru [ 25,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru");
end);
v63:Button("Mua Haki Quan Sát [ 750,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy");
end);
v63:Toggle("Mua Tất Cả Những Thứ Ở Trên",false,
function(v667) Abilities=v667;
while Abilities 
do wait(0.1);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru");
end 
end);
v63:Seperator("Phong cách chiến đấu");
v63:Button("Mua Chân Đen V1 [ 150,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v63:Button("Mua Võ Điện V1 [ 550,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v63:Button("Mua Võ Người Cá V1 [ 750,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v63:Button("Mua Hơi Thở Rồng V1 [ 1,500 Fragments ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2");
end);
v63:Button("Mua Superhuman [ 3,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v63:Button("Mua Chân Đen V2 [ 5,000 Fragments 5,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v63:Button("Mua Võ Cá V2 [ 5,000 Fragments 2,500,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v63:Button("Mua Võ Điện V2 [ 5,000 Fragments 3,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v63:Button("Mua Võ Rồng V2 [ 5,000 Fragments 3,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v63:Button("Mua God Human [ 5,000 Fragments 5,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v63:Button("Mua Huyết Quỷ [ 5,000 Fragments $5,000,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt",true);
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v63:Seperator(" Kiếm ");
v63:Button("Cutlass [ 1,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass");
end);
v63:Button("Katana [ 1,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana");
end);
v63:Button("Iron Mace [ 25,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace");
end);
v63:Button("Dual Katana [ 12,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana");
end);
v63:Button("Triple Katana [ 60,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana");
end);
v63:Button("Pipe [ 100,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe");
end);
v63:Button("Dual-Headed Blade [ 400,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade");
end);
v63:Button("Bisento [ 1,200,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento");
end);
v63:Button("Soul Cane [ 750,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane");
end);
v63:Button("Pole v.2 [ 5,000 Fragments ]",
function() game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v63:Toggle("Yama Sword [ Elite Hunter 30 ]",_G.Yama,
function(v668) _G.Yama=v668;
end);
spawn(
function() 
while wait() 
do 
if _G.Yama then 
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")>=30) then 
repeat wait(0.1);
fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama  
end 
end 
end 
end);
v63:Seperator(" Súng ");
v63:Button("Slingshot [ 5,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot");
end);
v63:Button("Musket [ 8,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket");
end);
v63:Button("Flintlock [ 10,500 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock");
end);
v63:Button("Refined Slingshot [ 30,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock");
end);
v63:Button("Refined Flintlock [ 65,000 Beli ]",
function() 
local v669={[1]="BuyItem",[2]="Refined Flintlock"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v669));
end);
v63:Button("Cannon [ 100,000 Beli ]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon");
end);
v63:Button("Kabucha [ 1,500 Fragments]",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2");
end);
v63:Button("Bizarre Rifle [ 250 Ectoplasm ]",
function() 
local v670="Ectoplasm";
local v671="Buy";
local v672=1;
local v673=game:GetService("ReplicatedStorage").Remotes['CommF_'];
v673:InvokeServer(v670,v671,v672);
local v670="Ectoplasm";
local v671="Buy";
local v672=1;
local v673=game:GetService("ReplicatedStorage").Remotes['CommF_'];
v673:InvokeServer(v670,v671,v672);
end);
v63:Seperator(" Fragments ");
v63:Button("Đặt lại Chỉ Số ( 2.5K F )",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2");
end);
v63:Button("Đổi Tộc ( 3K F )",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2");
end);
v63:Seperator(" Phụ kiện ");
v63:Button("Black Cape [ 50,000 Beli ]",
function() 
local v674={[1]="BuyItem",[2]="Black Cape"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v674));
end);
v63:Button("Swordsman Hat [ 150k Beli ]",
function() 
local v675={[1]="BuyItem",[2]="Swordsman Hat"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v675));
end);
v63:Button("Tomoe Ring [ 500k Beli ]",
function() 
local v676={[1]="BuyItem",[2]="Tomoe Ring"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v676));
end);
v64:Seperator("Trái");
FruitList={"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Venom-Venom","Shadow-Shadow","Control-Control","Soul-Soul","Dragon-Dragon","Leopard-Leopard"};
local v119=game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper={};
ShopDevilSell={};
for v677,v678 in next,v119 
do table.insert(Table_DevilFruitSniper,v678.Name);
if v678.OnSale then table.insert(ShopDevilSell,v678.Name);
end 
end _G.SelectFruit="";
v64:Dropdown("Chọn Trái",Table_DevilFruitSniper,
function(v679) _G.SelectFruit=v679;
end);
v64:Toggle("Mua Trái Đã Chọn",_G.BuyFruitSniper,
function(v680) _G.BuyFruitSniper=v680;
end);
v64:Seperator("khác");
v64:Dropdown("Chọn Trái",Table_DevilFruitSniper,
function(v681) _G.SelectFruitEat=v681;
end);
v64:Toggle("Ăn Trái Đã Chọn",_G.EatFruit,
function(v682) _G.EatFruit=v682;
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.EatFruit then game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
end 
end 
end);
end);
spawn(
function() pcall(
function() 
while wait(0.1) 
do 
if _G.BuyFruitSniper then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","_G.SelectFruit",false);
end 
end 
end);
end);
v64:Button("Quay Trái Ác Quỷ",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy");
end);
v64:Button("Mở Shop Trái",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible=true;
end);
v64:Toggle("Tự Động Lưu Trái",_G.StoreFruit,
function(v684) _G.StoreFruit=v684;
end);
spawn(
function() 
while wait() 
do 
if _G.StoreFruit then pcall(
function() 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") );
end 
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") );
end 
end);
end 
end 
end);
v64:Toggle("Dịch Chuyển Đến Trái",_G.Grabfruit,
function(v685) _G.Grabfruit=v685;
end);
spawn(
function() 
while wait(0.1) 
do 
if _G.Grabfruit then 
for v2062,v2063 in pairs(game.Workspace:GetChildren()) 
do 
if v2063:IsA("Tool") then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=v2063.Handle.CFrame;
end 
end 
end 
end 
end);
v64:Toggle("Bay Đến Trái",_G.Tweenfruit,
function(v686) _G.Tweenfruit=v686;
StopTween(_G.Tweenfruit);
end);
spawn(
function() 
while wait() 
do 
if _G.Tweenfruit then 
for v2064,v2065 in pairs(game.Workspace:GetChildren()) 
do 
if v2065:IsA("Tool") then topos(v2065.Handle.CFrame);
end 
end 
end 
end 
end);
v65:Seperator("Máy Chủ");
v65:Button("Vào Lại Máy Chủ",
function() game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer);
end);
v65:Button("Đổi Máy Chủ",
function() Hop();
end);
v65:Button("Đổi Máy Chủ Ít Người",
function() getgenv().AutoTeleport=true;
getgenv().DontTeleportTheSameNumber=true;
getgenv().CopytoClipboard=false;
if  not game:IsLoaded() then print("Game is loading waiting...");
end 
local v690=math.huge;
local v691;
local v692;
local v693="https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
function serversearch() 
for v1822,v1823 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v693)).data) 
do 
if ((type(v1823)=="table") and (v1823.playing~=nil) and (v690>v1823.playing)) then v691=v1823.maxPlayers;
v690=v1823.playing;
v692=v1823.id;
end 
end 
end 
function getservers() serversearch();
for v1824,v1825 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v693))) 
do 
if (v1824=="nextPageCursor") then 
if v693:find("&cursor=") then 
local v2196=v693:find("&cursor=");
local v2197=v693:sub(v2196);
v693=v693:gsub(v2197,"");
end v693=v693   .. "&cursor="   .. v1825 ;
getservers();
end 
end 
end getservers();
if AutoTeleport then 
if DontTeleportTheSameNumber then 
if (( #game:GetService("Players"):GetPlayers() -4)==v690) then 
return warn("It has same number of players (except you)");
elseif (v692==game.JobId) then 
return warn("Your current server is the most empty server atm");
end 
end game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,v692);
end 
end);
v65:Button("Sao chép Id Máy Chủ",
function() setclipboard(tostring(game.JobId));
end);
v65:Textbox("Nhập Id Máy Chủ","Nhập",true,
function(v694) _G.Job=v694;
end);
v65:Button("Vào Máy Chủ Đã Nhập Id",
function() game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job,game.Players.LocalPlayer);
end);
v65:Seperator("linh tinh");
v65:Button("Mở Tilte",
function() 
local v695={[1]="getTitles"};
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v695));
game.Players.localPlayer.PlayerGui.Main.Titles.Visible=true;
end);
v65:Button("Mở Haki Màu",
function() game.Players.localPlayer.PlayerGui.Main.Colors.Visible=true;
end);
v65:Seperator("Đội");
v65:Button("Tham gia đội Hải Tặc",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates");
end);
v65:Button("Tham gia đội Thủy quân lục chiến",
function() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines");
end);
v65:Toggle("Chống AFK",true,
function() 
local v698=game:GetService("VirtualUser");
repeat wait();
until game:IsLoaded() game:GetService("Players").LocalPlayer.Idled:connect(
function() game:GetService("VirtualUser"):ClickButton2(Vector2.new());
v698:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
wait(1);
v698:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
end);
end);
v65:Seperator("Mã");
local v120={"KITTGAMING","ENYU_IS_PRO","FUDD10","BIGNEWS","THEGREATACE","SUB2GAMERROBOT_EXP1","STRAWHATMAIME","SUB2OFFICIALNOOBIE","SUB2NOOBMASTER123","SUB2DAIGROCK","AXIORE","TANTAIGAMIMG","STRAWHATMAINE","JCWK","FUDD10_V2","SUB2FER999","MAGICBIS","TY_FOR_WATCHING","STARCODEHEO"};
v65:Button("Nhập Tất Cả Mã",
function() 
function RedeemCode(v981) game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v981);
end 
for v982,v983 in pairs(v120) 
do RedeemCode(v983);
end 
end);
v65:Dropdown("Chọn Mã Reset Chỉ Số",{"NOOB_REFUND","SUB2GAMERROBOT_RESET1","Sub2UncleKizaru"},
function(v699) _G.CodeSelect=v699;
end);
v65:Button("Nhập Mã Đã Chọn",
function() game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v65:Seperator("Tình trạng");
v65:Dropdown("Chọn trạng thái Haki",{"Tình trạng 0","Tình trạng 1","Tình trạng 2","Tình trạng 3","Tình trạng 4","Tình trạng 5"},
function(v700) _G.SelectStateHaki=v700;
end);
v65:Button("Thay đổi trạng thái Haki",
function() 
if (_G.SelectStateHaki=="Tình trạng 0") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0);
elseif (_G.SelectStateHaki=="Tình trạng 1") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1);
elseif (_G.SelectStateHaki=="Tình trạng 2") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2);
elseif (_G.SelectStateHaki=="Tình trạng 3") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3);
elseif (_G.SelectStateHaki=="Tình trạng 4") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4);
elseif (_G.SelectStateHaki=="Tình trạng 5") then game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5);
end 
end);
local v121=require(game.ReplicatedStorage.Util.CameraShaker);
v121:Stop();
local v122=game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification",{Title="HBelz Hub",Text="",Duration=10});
