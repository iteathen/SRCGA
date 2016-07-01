.class final Lcom/sun/glass/ui/lens/LensRobot;
.super Lcom/sun/glass/ui/Robot;
.source "LensRobot.java"


# static fields
.field private static final GET_X:I = 0x1

.field private static final GET_Y:I = 0x2

.field private static numOfInstances:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/sun/glass/ui/lens/LensRobot;->numOfInstances:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Robot;-><init>()V

    .line 43
    return-void
.end method

.method private native _getScreenCapture(IIII[I)V
.end method

.method private native getMouseLocation(I)I
.end method

.method private native postKeyEvent(II)V
.end method

.method private native postMouseEvent(IIII)V
.end method

.method private native postScrollEvent(I)V
.end method


# virtual methods
.method protected _create()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected _destroy()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected _getMouseX()I
    .locals 3

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/lens/LensRobot;->getMouseLocation(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensRobot;
    return v0
.end method

.method protected _getMouseY()I
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/lens/LensRobot;->getMouseLocation(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensRobot;
    return v0
.end method

.method protected native _getPixelColor(II)I
.end method

.method protected _getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;
    .locals 13

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
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

    .line 111
    .local v6, "data":[I
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/glass/ui/lens/LensRobot;->_getScreenCapture(IIII[I)V

    .line 112
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

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensRobot;
    return-object v0
.end method

.method protected _keyPress(I)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "code":I
    move-object v2, v0

    const/16 v3, 0x6f

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/lens/LensRobot;->postKeyEvent(II)V

    .line 58
    return-void
.end method

.method protected _keyRelease(I)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "code":I
    move-object v2, v0

    const/16 v3, 0x70

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/lens/LensRobot;->postKeyEvent(II)V

    .line 62
    return-void
.end method

.method protected _mouseMove(II)V
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    const/16 v4, 0xe0

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/lens/LensRobot;->postMouseEvent(IIII)V

    .line 70
    return-void
.end method

.method protected _mousePress(I)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "buttons":I
    move-object v2, v0

    const/16 v3, 0xdd

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/glass/ui/lens/LensRobot;->postMouseEvent(IIII)V

    .line 76
    return-void
.end method

.method protected _mouseRelease(I)V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "buttons":I
    move-object v2, v0

    const/16 v3, 0xde

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/glass/ui/lens/LensRobot;->postMouseEvent(IIII)V

    .line 81
    return-void
.end method

.method protected _mouseWheel(I)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensRobot;
    move v1, p1

    .local v1, "wheelAmt":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/lens/LensRobot;->postScrollEvent(I)V

    .line 86
    return-void
.end method
