.class final Lcom/sun/glass/ui/gtk/GtkRobot;
.super Lcom/sun/glass/ui/Robot;
.source "GtkRobot.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkRobot;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Robot;-><init>()V

    return-void
.end method

.method private native _getScreenCapture(IIII[I)V
.end method


# virtual methods
.method protected _create()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected _destroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected native _getMouseX()I
.end method

.method protected native _getMouseY()I
.end method

.method protected _getPixelColor(II)I
    .locals 10

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    const/4 v4, 0x1

    new-array v4, v4, [I

    move-object v3, v4

    .line 69
    .local v3, "result":[I
    move-object v4, v0

    move v5, v1

    move v6, v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sun/glass/ui/gtk/GtkRobot;->_getScreenCapture(IIII[I)V

    .line 70
    move-object v4, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkRobot;
    return v0
.end method

.method protected _getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;
    .locals 13

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "isHiDPI":Z
    move v7, v3

    move v8, v4

    mul-int/2addr v7, v8

    new-array v7, v7, [I

    move-object v6, v7

    .line 76
    .local v6, "data":[I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/glass/ui/gtk/GtkRobot;->_getScreenCapture(IIII[I)V

    .line 77
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v7

    move v8, v3

    move v9, v4

    move-object v10, v6

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkRobot;
    return-object v0
.end method

.method protected native _keyPress(I)V
.end method

.method protected native _keyRelease(I)V
.end method

.method protected native _mouseMove(II)V
.end method

.method protected native _mousePress(I)V
.end method

.method protected native _mouseRelease(I)V
.end method

.method protected native _mouseWheel(I)V
.end method
