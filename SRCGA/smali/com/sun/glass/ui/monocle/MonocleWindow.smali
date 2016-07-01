.class final Lcom/sun/glass/ui/monocle/MonocleWindow;
.super Lcom/sun/glass/ui/Window;
.source "MonocleWindow.java"


# static fields
.field private static final STATE_FULLSCREEN:I = 0x3

.field private static final STATE_MAXIMIZED:I = 0x2

.field private static final STATE_MINIMIZED:I = 0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private cachedAlpha:F

.field private cachedH:I

.field private cachedW:I

.field private cachedX:I

.field private cachedY:I

.field private id:I

.field private maxH:I

.field private maxW:I

.field private minH:I

.field private minW:I

.field private state:I


# direct methods
.method constructor <init>(J)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v1, p1

    .local v1, "parent":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Window;-><init>(J)V

    .line 51
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    .line 52
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    .line 314
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedAlpha:F

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    .line 51
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    .line 52
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    .line 314
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedAlpha:F

    .line 56
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/Screen;->getUIScale()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setPlatformScale(F)V

    .line 57
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setRenderScale(F)V

    .line 58
    return-void
.end method

.method private notifyResizeAndMove(IIII)V
    .locals 11

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    check-cast v7, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v5, v7

    .line 144
    .local v5, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    const/4 v7, 0x0

    move v6, v7

    .line 146
    .local v6, "repaintView":Z
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v7

    move v8, v3

    if-ne v7, v8, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v7

    move v8, v4

    if-eq v7, v8, :cond_1

    .line 147
    :cond_0
    move-object v7, v0

    const/16 v8, 0x1ff

    move v9, v3

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResize(III)V

    .line 148
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 149
    move-object v7, v5

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyResize(II)V

    .line 150
    const/4 v7, 0x1

    move v6, v7

    .line 153
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v7

    move v8, v2

    if-eq v7, v8, :cond_3

    .line 154
    :cond_2
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyMove(II)V

    .line 155
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 156
    const/4 v7, 0x1

    move v6, v7

    .line 159
    :cond_3
    move v7, v6

    if-eqz v7, :cond_4

    .line 160
    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyRepaint()V

    .line 162
    :cond_4
    return-void
.end method


# virtual methods
.method protected _close(J)Z
    .locals 7

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "nativeWindowPointer":J
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->closeWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _createChildWindow(J)J
    .locals 7

    .prologue
    .line 174
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "parent":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected _createWindow(JJI)J
    .locals 9

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v1, p1

    .local v1, "NativeWindow":J
    move-wide v3, p3

    .local v3, "NativeScreen":J
    move v5, p5

    .local v5, "mask":I
    move-object v6, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->addWindow(Lcom/sun/glass/ui/monocle/MonocleWindow;)I

    move-result v7

    iput v7, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->id:I

    .line 169
    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->id:I

    int-to-long v6, v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return-wide v0
.end method

.method protected _enterModal(J)V
    .locals 7

    .prologue
    .line 406
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected _enterModalWithWindow(JJ)V
    .locals 9

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "dialog":J
    move-wide v4, p3

    .local v4, "window":J
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method protected _exitModal(J)V
    .locals 7

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected _getEmbeddedX(J)I
    .locals 5

    .prologue
    .line 451
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _getEmbeddedY(J)I
    .locals 5

    .prologue
    .line 454
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _grabFocus(J)Z
    .locals 7

    .prologue
    .line 389
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->grabFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _maximize(JZZ)Z
    .locals 17

    .prologue
    .line 240
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide/from16 v2, p1

    .local v2, "nativeWindowPointer":J
    move/from16 v4, p3

    .local v4, "maximize":Z
    move/from16 v5, p4

    .local v5, "wasMaximized":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v11

    move-object v6, v11

    .line 241
    .local v6, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v11

    move v7, v11

    .line 242
    .local v7, "x":I
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v11

    move v8, v11

    .line 243
    .local v8, "y":I
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v11

    move v9, v11

    .line 244
    .local v9, "width":I
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v11

    move v10, v11

    .line 245
    .local v10, "height":I
    move v11, v4

    if-eqz v11, :cond_4

    move v11, v5

    if-nez v11, :cond_4

    .line 246
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    if-nez v11, :cond_0

    .line 247
    move-object v11, v1

    move v12, v7

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    .line 248
    move-object v11, v1

    move v12, v8

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    .line 249
    move-object v11, v1

    move v12, v9

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    .line 250
    move-object v11, v1

    move v12, v10

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    .line 252
    :cond_0
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    if-ltz v11, :cond_2

    .line 253
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    move v9, v11

    .line 254
    move v11, v7

    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v12

    move v13, v9

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v7, v11

    .line 259
    :goto_0
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    if-ltz v11, :cond_3

    .line 260
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    move v10, v11

    .line 261
    move v11, v8

    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v12

    move v13, v10

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 266
    :goto_1
    move-object v11, v1

    const/4 v12, 0x2

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    .line 274
    :cond_1
    :goto_2
    move-object v11, v1

    move v12, v7

    move v13, v8

    move v14, v9

    move v15, v10

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResizeAndMove(IIII)V

    .line 275
    const/4 v11, 0x1

    move v1, v11

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1

    .line 256
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_2
    const/4 v11, 0x0

    move v7, v11

    .line 257
    move-object v11, v6

    invoke-interface {v11}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v11

    move v9, v11

    goto :goto_0

    .line 263
    :cond_3
    const/4 v11, 0x0

    move v8, v11

    .line 264
    move-object v11, v6

    invoke-interface {v11}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v11

    move v10, v11

    goto :goto_1

    .line 267
    :cond_4
    move v11, v4

    if-nez v11, :cond_1

    move v11, v5

    if-eqz v11, :cond_1

    .line 268
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    move v7, v11

    .line 269
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    move v8, v11

    .line 270
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    move v9, v11

    .line 271
    move-object v11, v1

    iget v11, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    move v10, v11

    .line 272
    move-object v11, v1

    const/4 v12, 0x0

    iput v12, v11, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    goto :goto_2
.end method

.method protected _minimize(JZ)Z
    .locals 13

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "nativeWindowPointer":J
    move/from16 v4, p3

    .local v4, "minimize":Z
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v9

    move v5, v9

    .line 209
    .local v5, "x":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v9

    move v6, v9

    .line 210
    .local v6, "y":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v9

    move v7, v9

    .line 211
    .local v7, "width":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v9

    move v8, v9

    .line 212
    .local v8, "height":I
    move v9, v4

    if-eqz v9, :cond_1

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 213
    move-object v9, v1

    const/4 v10, 0x1

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    .line 214
    move-object v9, v1

    move v10, v5

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    .line 215
    move-object v9, v1

    move v10, v6

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    .line 216
    move-object v9, v1

    move v10, v7

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    .line 217
    move-object v9, v1

    move v10, v8

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    .line 220
    move-object v9, v1

    invoke-static {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->remove(Lcom/sun/glass/ui/Window;)V

    .line 221
    move-object v9, v1

    const/16 v10, 0x213

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResize(III)V

    .line 234
    :cond_0
    :goto_0
    const/4 v9, 0x1

    move v1, v9

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1

    .line 223
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_1
    move v9, v4

    if-nez v9, :cond_0

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 224
    move-object v9, v1

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    .line 225
    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    move v5, v9

    .line 226
    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    move v6, v9

    .line 227
    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    move v7, v9

    .line 228
    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    move v8, v9

    .line 231
    move-object v9, v1

    invoke-static {v9}, Lcom/sun/glass/ui/monocle/MonocleWindow;->add(Lcom/sun/glass/ui/Window;)V

    .line 232
    move-object v9, v1

    const/16 v10, 0x215

    move v11, v7

    move v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResize(III)V

    goto :goto_0
.end method

.method _notifyFocusDisabled()V
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyFocusDisabled()V

    .line 442
    return-void
.end method

.method protected _notifyFocusUngrab()V
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyFocusUngrab()V

    .line 438
    return-void
.end method

.method protected _releaseInput(J)V
    .locals 9

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected _requestFocus(JI)Z
    .locals 7

    .prologue
    .line 334
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "event":I
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->requestFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)Z

    move-result v5

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V
    .locals 39

    .prologue
    .line 462
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide/from16 v2, p1

    .local v2, "ptr":J
    move-object/from16 v4, p3

    .local v4, "text":Ljava/lang/String;
    move/from16 v5, p4

    .local v5, "type":I
    move-wide/from16 v6, p5

    .local v6, "width":D
    move-wide/from16 v8, p7

    .local v8, "height":D
    move-wide/from16 v10, p9

    .local v10, "Mxx":D
    move-wide/from16 v12, p11

    .local v12, "Mxy":D
    move-wide/from16 v14, p13

    .local v14, "Mxz":D
    move-wide/from16 v16, p15

    .local v16, "Mxt":D
    move-wide/from16 v18, p17

    .local v18, "Myx":D
    move-wide/from16 v20, p19

    .local v20, "Myy":D
    move-wide/from16 v22, p21

    .local v22, "Myz":D
    move-wide/from16 v24, p23

    .local v24, "Myt":D
    move-wide/from16 v26, p25

    .local v26, "Mzx":D
    move-wide/from16 v28, p27

    .local v28, "Mzy":D
    move-wide/from16 v30, p29

    .local v30, "Mzz":D
    move-wide/from16 v32, p31

    .local v32, "Mzt":D
    new-instance v34, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v37, v34

    move-object/from16 v34, v37

    move-object/from16 v35, v37

    const-string v36, "Not supported yet."

    invoke-direct/range {v35 .. v36}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v34
.end method

.method protected _setAlpha(JF)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "alpha"    # F

    .prologue
    .line 349
    return-void
.end method

.method protected _setBackground(JFFF)Z
    .locals 9

    .prologue
    .line 353
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "r":F
    move v5, p4

    .local v5, "g":F
    move v6, p5

    .local v6, "b":F
    const/4 v7, 0x1

    move v1, v7

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setBounds(JIIZZIIIIFF)V
    .locals 21

    .prologue
    .line 103
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide/from16 v2, p1

    .local v2, "nativeWindowPointer":J
    move/from16 v4, p3

    .local v4, "x":I
    move/from16 v5, p4

    .local v5, "y":I
    move/from16 v6, p5

    .local v6, "xSet":Z
    move/from16 v7, p6

    .local v7, "ySet":Z
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move/from16 v10, p9

    .local v10, "cw":I
    move/from16 v11, p10

    .local v11, "ch":I
    move/from16 v12, p11

    .local v12, "xGravity":F
    move/from16 v13, p12

    .local v13, "yGravity":F
    move/from16 v16, v8

    if-lez v16, :cond_4

    .line 105
    move/from16 v16, v8

    move/from16 v14, v16

    .line 114
    .local v14, "width":I
    :goto_0
    move/from16 v16, v9

    if-lez v16, :cond_6

    .line 116
    move/from16 v16, v9

    move/from16 v15, v16

    .line 124
    .local v15, "height":I
    :goto_1
    move/from16 v16, v6

    if-nez v16, :cond_0

    .line 125
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v16

    move/from16 v4, v16

    .line 127
    :cond_0
    move/from16 v16, v7

    if-nez v16, :cond_1

    .line 128
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v16

    move/from16 v5, v16

    .line 130
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    move/from16 v16, v0

    if-ltz v16, :cond_2

    .line 131
    move/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v14, v16

    .line 133
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    move/from16 v16, v0

    if-ltz v16, :cond_3

    .line 134
    move/from16 v16, v15

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v15, v16

    .line 136
    :cond_3
    move/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->minW:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v14, v16

    .line 137
    move/from16 v16, v15

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/glass/ui/monocle/MonocleWindow;->minH:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v15, v16

    .line 139
    move-object/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v14

    move/from16 v20, v15

    invoke-direct/range {v16 .. v20}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResizeAndMove(IIII)V

    .line 140
    return-void

    .line 106
    .end local v14    # "width":I
    .end local v15    # "height":I
    :cond_4
    move/from16 v16, v10

    if-lez v16, :cond_5

    .line 108
    move/from16 v16, v10

    move/from16 v14, v16

    .restart local v14    # "width":I
    goto/16 :goto_0

    .line 111
    .end local v14    # "width":I
    :cond_5
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v16

    move/from16 v14, v16

    .restart local v14    # "width":I
    goto/16 :goto_0

    .line 117
    :cond_6
    move/from16 v16, v10

    if-lez v16, :cond_7

    .line 119
    move/from16 v16, v11

    move/from16 v15, v16

    .restart local v15    # "height":I
    goto/16 :goto_1

    .line 122
    .end local v15    # "height":I
    :cond_7
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v16

    move/from16 v15, v16

    .restart local v15    # "height":I
    goto/16 :goto_1
.end method

.method protected _setCursor(JLcom/sun/glass/ui/Cursor;)V
    .locals 7

    .prologue
    .line 447
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, p3

    .local v4, "cursor":Lcom/sun/glass/ui/Cursor;
    move-object v5, v4

    check-cast v5, Lcom/sun/glass/ui/monocle/MonocleCursor;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/MonocleCursor;->applyCursor()V

    .line 448
    return-void
.end method

.method protected _setEnabled(JZ)V
    .locals 17

    .prologue
    .line 358
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide/from16 v2, p1

    .local v2, "ptr":J
    move/from16 v4, p3

    .local v4, "enabled":Z
    move v7, v4

    if-nez v7, :cond_0

    move-object v7, v1

    .line 359
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getFocusedWindow()Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 360
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    check-cast v7, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v5, v7

    .line 362
    .local v5, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v7, v5

    const/16 v8, 0xe2

    const/16 v9, 0xd3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_0
    invoke-virtual/range {v7 .. v16}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyMouse(IIIIIIIZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 368
    .end local v5    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :cond_0
    :goto_0
    return-void

    .line 364
    .restart local v5    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 365
    .local v6, "e":Ljava/lang/RuntimeException;
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/glass/ui/Application;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected _setFocusable(JZ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "isFocusable"    # Z

    .prologue
    .line 338
    return-void
.end method

.method protected _setIcon(JLcom/sun/glass/ui/Pixels;)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "pixels"    # Lcom/sun/glass/ui/Pixels;

    .prologue
    .line 385
    return-void
.end method

.method protected _setLevel(JI)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "level"    # I

    .prologue
    .line 346
    return-void
.end method

.method protected _setMaximumSize(JII)Z
    .locals 9

    .prologue
    .line 379
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "width":I
    move v5, p4

    .local v5, "height":I
    move-object v6, v1

    move v7, v4

    iput v7, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxW:I

    .line 380
    move-object v6, v1

    move v7, v5

    iput v7, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->maxH:I

    .line 381
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setMenubar(JJ)Z
    .locals 7

    .prologue
    .line 203
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, p3

    .local v4, "menubarPtr":J
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setMinimumSize(JII)Z
    .locals 9

    .prologue
    .line 372
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "width":I
    move v5, p4

    .local v5, "height":I
    move-object v6, v1

    move v7, v4

    iput v7, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->minW:I

    .line 373
    move-object v6, v1

    move v7, v5

    iput v7, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->minH:I

    .line 374
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setResizable(JZ)Z
    .locals 7

    .prologue
    .line 329
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "resizable":Z
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setTitle(JLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 342
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, p3

    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setView(JLcom/sun/glass/ui/View;)Z
    .locals 9

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "nativeWindowPointer":J
    move-object v4, p3

    .local v4, "view":Lcom/sun/glass/ui/View;
    const/4 v6, 0x1

    move v5, v6

    .line 185
    .local v5, "result":Z
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 188
    move-object v6, v4

    check-cast v6, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyResize(II)V

    .line 190
    :cond_0
    move v6, v5

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1
.end method

.method protected _setVisible(JZ)Z
    .locals 7

    .prologue
    .line 317
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "visible":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 318
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedAlpha:F

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setAlpha(F)V

    .line 324
    :goto_0
    const/4 v5, 0x1

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return v1

    .line 320
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    :cond_0
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedAlpha:F

    .line 321
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MonocleWindow;->setAlpha(F)V

    goto :goto_0
.end method

.method protected _toBack(J)V
    .locals 7

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->toBack(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    .line 73
    return-void
.end method

.method protected _toFront(J)V
    .locals 7

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->toFront(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    .line 67
    return-void
.end method

.method protected _ungrabFocus(J)V
    .locals 7

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->ungrabFocus(Lcom/sun/glass/ui/monocle/MonocleWindow;)V

    .line 395
    return-void
.end method

.method public getNativeWindow()J
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/MonocleWindow;->id:I

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    return-wide v0
.end method

.method protected notifyClose()V
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/Window;->notifyClose()V

    .line 422
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindow;->close()V

    .line 423
    return-void
.end method

.method protected notifyDestroy()V
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/Window;->notifyDestroy()V

    .line 428
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 429
    return-void
.end method

.method protected notifyFocus(I)V
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move v1, p1

    .local v1, "event":I
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/glass/ui/Window;->notifyFocus(I)V

    .line 434
    return-void
.end method

.method setFullScreen(Z)V
    .locals 13

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move v1, p1

    .local v1, "fullscreen":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v8

    move-object v2, v8

    .line 280
    .local v2, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getX()I

    move-result v8

    move v3, v8

    .line 281
    .local v3, "x":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getY()I

    move-result v8

    move v4, v8

    .line 282
    .local v4, "y":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getWidth()I

    move-result v8

    move v5, v8

    .line 283
    .local v5, "width":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getHeight()I

    move-result v8

    move v6, v8

    .line 284
    .local v6, "height":I
    move v8, v1

    if-eqz v8, :cond_2

    .line 285
    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    if-nez v8, :cond_0

    .line 286
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    .line 287
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    .line 288
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    .line 289
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    .line 291
    :cond_0
    const/4 v8, 0x0

    move v3, v8

    .line 292
    const/4 v8, 0x0

    move v4, v8

    .line 293
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 294
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 295
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v7, v8

    .line 296
    .local v7, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 297
    move-object v8, v7

    const/16 v9, 0x1af

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyView(I)V

    .line 299
    :cond_1
    move-object v8, v0

    const/4 v9, 0x3

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    .line 300
    .line 311
    :goto_0
    move-object v8, v0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/monocle/MonocleWindow;->notifyResizeAndMove(IIII)V

    .line 312
    return-void

    .line 301
    .end local v7    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    :cond_2
    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedX:I

    move v3, v8

    .line 302
    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedY:I

    move v4, v8

    .line 303
    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedW:I

    move v5, v8

    .line 304
    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->cachedH:I

    move v6, v8

    .line 305
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v7, v8

    .line 306
    .restart local v7    # "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v8, v7

    if-eqz v8, :cond_3

    .line 307
    move-object v8, v7

    const/16 v9, 0x1b0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyView(I)V

    .line 309
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Lcom/sun/glass/ui/monocle/MonocleWindow;->state:I

    goto :goto_0
.end method
