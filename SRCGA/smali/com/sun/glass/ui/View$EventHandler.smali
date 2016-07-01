.class public Lcom/sun/glass/ui/View$EventHandler;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputMethodCandidatePos(I)[D
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    move v1, p1

    .local v1, "offset":I
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/View$EventHandler;
    return-object v0
.end method

.method public getSceneAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/View$EventHandler;
    return-object v0
.end method

.method public handleBeginTouchEvent(Lcom/sun/glass/ui/View;JIZI)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "modifiers"    # I
    .param p5, "isDirect"    # Z
    .param p6, "touchEventCount"    # I

    .prologue
    .line 158
    return-void
.end method

.method public handleDragDrop(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "xAbs":I
    move v5, p5

    .local v5, "yAbs":I
    move v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    const/4 v8, 0x0

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/View$EventHandler;
    return v0
.end method

.method public handleDragEnd(Lcom/sun/glass/ui/View;I)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "performedAction"    # I

    .prologue
    .line 125
    return-void
.end method

.method public handleDragEnter(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "xAbs":I
    move v5, p5

    .local v5, "yAbs":I
    move v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move v8, v6

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/View$EventHandler;
    return v0
.end method

.method public handleDragLeave(Lcom/sun/glass/ui/View;Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "dropTargetAssistant"    # Lcom/sun/glass/ui/ClipboardAssistance;

    .prologue
    .line 138
    return-void
.end method

.method public handleDragOver(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)I
    .locals 9

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/View$EventHandler;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "xAbs":I
    move v5, p5

    .local v5, "yAbs":I
    move v6, p6

    .local v6, "recommendedDropAction":I
    move-object/from16 v7, p7

    .local v7, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move v8, v6

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/View$EventHandler;
    return v0
.end method

.method public handleDragStart(Lcom/sun/glass/ui/View;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "button"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "xAbs"    # I
    .param p6, "yAbs"    # I
    .param p7, "dropSourceAssistant"    # Lcom/sun/glass/ui/ClipboardAssistance;

    .prologue
    .line 122
    return-void
.end method

.method public handleEndTouchEvent(Lcom/sun/glass/ui/View;J)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J

    .prologue
    .line 202
    return-void
.end method

.method public handleInputMethodEvent(JLjava/lang/String;[I[I[BII)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "clauseBoundary"    # [I
    .param p5, "attrBoundary"    # [I
    .param p6, "attrValue"    # [B
    .param p7, "commitCount"    # I
    .param p8, "cursorPos"    # I

    .prologue
    .line 114
    return-void
.end method

.method public handleKeyEvent(Lcom/sun/glass/ui/View;JII[CI)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "action"    # I
    .param p5, "keyCode"    # I
    .param p6, "keyChars"    # [C
    .param p7, "modifiers"    # I

    .prologue
    .line 68
    return-void
.end method

.method public handleMenuEvent(Lcom/sun/glass/ui/View;IIIIZ)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xAbs"    # I
    .param p5, "yAbs"    # I
    .param p6, "isKeyboardTrigger"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public handleMouseEvent(Lcom/sun/glass/ui/View;JIIIIIIIZZ)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "button"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "xAbs"    # I
    .param p9, "yAbs"    # I
    .param p10, "modifiers"    # I
    .param p11, "isPopupTrigger"    # Z
    .param p12, "isSynthesized"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public handleNextTouchEvent(Lcom/sun/glass/ui/View;JIJIIII)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "touchId"    # J
    .param p7, "x"    # I
    .param p8, "y"    # I
    .param p9, "xAbs"    # I
    .param p10, "yAbs"    # I

    .prologue
    .line 193
    return-void
.end method

.method public handleRotateGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDD)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "modifiers"    # I
    .param p6, "isDirect"    # Z
    .param p7, "isInertia"    # Z
    .param p8, "x"    # I
    .param p9, "y"    # I
    .param p10, "xAbs"    # I
    .param p11, "yAbs"    # I
    .param p12, "dangle"    # D
    .param p14, "totalangle"    # D

    .prologue
    .line 340
    return-void
.end method

.method public handleScrollEvent(Lcom/sun/glass/ui/View;JIIIIDDIIIIIDD)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "xAbs"    # I
    .param p7, "yAbs"    # I
    .param p8, "deltaX"    # D
    .param p10, "deltaY"    # D
    .param p12, "modifiers"    # I
    .param p13, "lines"    # I
    .param p14, "chars"    # I
    .param p15, "defaultLines"    # I
    .param p16, "defaultChars"    # I
    .param p17, "xMultiplier"    # D
    .param p19, "yMultiplier"    # D

    .prologue
    .line 108
    return-void
.end method

.method public handleScrollGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIIDDDDDD)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "modifiers"    # I
    .param p6, "isDirect"    # Z
    .param p7, "isInertia"    # Z
    .param p8, "touchCount"    # I
    .param p9, "x"    # I
    .param p10, "y"    # I
    .param p11, "xAbs"    # I
    .param p12, "yAbs"    # I
    .param p13, "dx"    # D
    .param p15, "dy"    # D
    .param p17, "totaldx"    # D
    .param p19, "totaldy"    # D
    .param p21, "multiplierX"    # D
    .param p23, "multiplierY"    # D

    .prologue
    .line 273
    return-void
.end method

.method public handleSwipeGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIII)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "modifiers"    # I
    .param p6, "isDirect"    # Z
    .param p7, "isInertia"    # Z
    .param p8, "touchCount"    # I
    .param p9, "dir"    # I
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "xAbs"    # I
    .param p13, "yAbs"    # I

    .prologue
    .line 363
    return-void
.end method

.method public handleViewEvent(Lcom/sun/glass/ui/View;JI)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I

    .prologue
    .line 65
    return-void
.end method

.method public handleZoomGestureEvent(Lcom/sun/glass/ui/View;JIIZZIIIIDDDD)V
    .locals 0
    .param p1, "view"    # Lcom/sun/glass/ui/View;
    .param p2, "time"    # J
    .param p4, "type"    # I
    .param p5, "modifiers"    # I
    .param p6, "isDirect"    # Z
    .param p7, "isInertia"    # Z
    .param p8, "x"    # I
    .param p9, "y"    # I
    .param p10, "xAbs"    # I
    .param p11, "yAbs"    # I
    .param p12, "scale"    # D
    .param p14, "expansion"    # D
    .param p16, "totalscale"    # D
    .param p18, "totalexpansion"    # D

    .prologue
    .line 315
    return-void
.end method
