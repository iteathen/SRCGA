.class final Lcom/sun/glass/ui/monocle/MonocleView;
.super Lcom/sun/glass/ui/View;
.source "MonocleView.java"


# static fields
.field private static multiClickMaxX:I

.field private static multiClickMaxY:I

.field private static multiClickTime:J


# instance fields
.field private cursorVisibility:Z

.field private resetCursorVisibility:Z

.field private scale:D

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickTime:J

    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickMaxX:I

    .line 48
    const/16 v0, 0x14

    sput v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickMaxY:I

    return-void
.end method

.method constructor <init>(D)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v1, p1

    .local v1, "scale":D
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/View;-><init>()V

    .line 36
    move-object v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/MonocleView;->scale:D

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/MonocleView;->resetCursorVisibility:Z

    .line 39
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/MonocleView;->scale:D

    .line 40
    return-void
.end method

.method static _getMultiClickMaxX()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickMaxX:I

    return v0
.end method

.method static _getMultiClickMaxY()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickMaxY:I

    return v0
.end method

.method static _getMultiClickTime()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/sun/glass/ui/monocle/MonocleView;->multiClickTime:J

    return-wide v0
.end method


# virtual methods
.method protected _begin(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 253
    return-void
.end method

.method protected _close(J)Z
    .locals 5

    .prologue
    .line 207
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x1

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v1
.end method

.method protected _create(Ljava/util/Map;)J
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v1, p1

    .local v1, "caps":Ljava/util/Map;
    const-wide/16 v2, 0x1

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return-wide v0
.end method

.method protected _enableInputMethodEvents(JZ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 68
    return-void
.end method

.method protected _end(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 261
    return-void
.end method

.method protected _enterFullscreen(JZZZ)Z
    .locals 13

    .prologue
    .line 214
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    move/from16 v4, p3

    .local v4, "animate":Z
    move/from16 v5, p4

    .local v5, "keepRatio":Z
    move/from16 v6, p5

    .local v6, "hideCursor":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v10

    move-object v7, v10

    .line 215
    .local v7, "wm":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v10

    move-object v8, v10

    .line 216
    .local v8, "focusedWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v10, v8

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setFullScreen(Z)V

    .line 217
    move v10, v6

    if-eqz v10, :cond_0

    .line 218
    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/glass/ui/monocle/MonocleView;->resetCursorVisibility:Z

    .line 220
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v10

    move-object v9, v10

    .line 221
    .local v9, "nativeCursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v10, v1

    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/NativeCursor;->getVisiblity()Z

    move-result v11

    iput-boolean v11, v10, Lcom/sun/glass/ui/monocle/MonocleView;->cursorVisibility:Z

    .line 222
    move-object v10, v9

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/monocle/NativeCursor;->setVisibility(Z)V

    .line 224
    .end local v9    # "nativeCursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    :cond_0
    const/4 v10, 0x1

    move v1, v10

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v1
.end method

.method protected _exitFullscreen(JZ)V
    .locals 11

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "animate":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v8

    move-object v5, v8

    .line 230
    .local v5, "wm":Lcom/sun/glass/ui/monocle/MonocleWindowManager;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v8

    move-object v6, v8

    .line 231
    .local v6, "focusedWindow":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setFullScreen(Z)V

    .line 232
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/glass/ui/monocle/MonocleView;->resetCursorVisibility:Z

    if-eqz v8, :cond_0

    .line 233
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/glass/ui/monocle/MonocleView;->resetCursorVisibility:Z

    .line 235
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v8

    move-object v7, v8

    .line 236
    .local v7, "nativeCursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v8, v7

    move-object v9, v1

    iget-boolean v9, v9, Lcom/sun/glass/ui/monocle/MonocleView;->cursorVisibility:Z

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/NativeCursor;->setVisibility(Z)V

    .line 238
    .end local v7    # "nativeCursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    :cond_0
    return-void
.end method

.method protected _getNativeFrameBuffer(J)I
    .locals 5

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v1
.end method

.method protected _getNativeView(J)J
    .locals 7

    .prologue
    .line 72
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return-wide v1
.end method

.method protected _getX(J)I
    .locals 5

    .prologue
    .line 77
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/MonocleView;->x:I

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v1
.end method

.method protected _getY(J)I
    .locals 5

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/MonocleView;->y:I

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v1
.end method

.method protected _scheduleRepaint(J)V
    .locals 0
    .param p1, "ptr"    # J

    .prologue
    .line 89
    return-void
.end method

.method protected _setParent(JJ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "parentPtr"    # J

    .prologue
    .line 203
    return-void
.end method

.method protected _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
    .locals 15

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-wide/from16 v2, p1

    .local v2, "nativeViewPtr":J
    move-object/from16 v4, p3

    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleView;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 96
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v7

    move-object v5, v7

    .line 97
    .local v5, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleView;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v7

    move-object v6, v7

    .line 98
    .local v6, "window":Lcom/sun/glass/ui/Window;
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v8

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleView;->x:I

    move-object v10, v6

    .line 99
    invoke-virtual {v10}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v1

    iget v10, v10, Lcom/sun/glass/ui/monocle/MonocleView;->y:I

    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v4

    .line 100
    invoke-virtual {v11}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v12

    move-object v13, v6

    .line 101
    invoke-virtual {v13}, Lcom/sun/glass/ui/Window;->getAlpha()F

    move-result v13

    .line 98
    invoke-interface/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/NativeScreen;->uploadPixels(Ljava/nio/Buffer;IIIIF)V

    .line 103
    .end local v5    # "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    .end local v6    # "window":Lcom/sun/glass/ui/Window;
    :cond_0
    return-void
.end method

.method protected notifyDragDrop(IIIII)I
    .locals 12

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/glass/ui/View;->notifyDragDrop(IIIII)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v0
.end method

.method protected notifyDragEnd(I)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "performedAction":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/View;->notifyDragEnd(I)V

    .line 174
    return-void
.end method

.method protected notifyDragEnter(IIIII)I
    .locals 12

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/glass/ui/View;->notifyDragEnter(IIIII)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v0
.end method

.method protected notifyDragLeave()V
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/View;->notifyDragLeave()V

    .line 159
    return-void
.end method

.method protected notifyDragOver(IIIII)I
    .locals 12

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/glass/ui/View;->notifyDragOver(IIIII)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return v0
.end method

.method protected notifyKey(II[CI)V
    .locals 10

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "keyChars":[C
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/View;->notifyKey(II[CI)V

    .line 113
    return-void
.end method

.method protected notifyMenu(IIIIZ)V
    .locals 12

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/glass/ui/View;->notifyMenu(IIIIZ)V

    .line 180
    return-void
.end method

.method protected notifyMouse(IIIIIIIZZ)V
    .locals 20

    .prologue
    .line 119
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "button":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move/from16 v7, p7

    .local v7, "modifiers":I
    move/from16 v8, p8

    .local v8, "isPopupTrigger":Z
    move/from16 v9, p9

    .local v9, "isSynthesized":Z
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-super/range {v10 .. v19}, Lcom/sun/glass/ui/View;->notifyMouse(IIIIIIIZZ)V

    .line 122
    return-void
.end method

.method notifyRepaint()V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MonocleView;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MonocleView;->y:I

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/MonocleView;->getWidth()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/MonocleView;->getHeight()I

    move-result v5

    invoke-super {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/View;->notifyRepaint(IIII)V

    .line 138
    return-void
.end method

.method protected notifyResize(II)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/glass/ui/View;->notifyResize(II)V

    .line 143
    return-void
.end method

.method protected notifyScroll(IIIIDDIIIIIDD)V
    .locals 36

    .prologue
    .line 130
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-wide/from16 v5, p5

    .local v5, "deltaX":D
    move-wide/from16 v7, p7

    .local v7, "deltaY":D
    move/from16 v9, p9

    .local v9, "modifiers":I
    move/from16 v10, p10

    .local v10, "lines":I
    move/from16 v11, p11

    .local v11, "chars":I
    move/from16 v12, p12

    .local v12, "defaultLines":I
    move/from16 v13, p13

    .local v13, "defaultChars":I
    move-wide/from16 v14, p14

    .local v14, "xMultiplier":D
    move-wide/from16 v16, p16

    .local v16, "yMultiplier":D
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move-wide/from16 v32, v14

    move-wide/from16 v34, v16

    invoke-super/range {v18 .. v35}, Lcom/sun/glass/ui/View;->notifyScroll(IIIIDDIIIIIDD)V

    .line 134
    return-void
.end method

.method protected notifyView(I)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "viewEvent":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/View;->notifyView(I)V

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleView;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonocleView["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MonocleView;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MonocleView;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 244
    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MonocleView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MonocleView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleView;
    return-object v0
.end method
