.class public Lcom/sun/glass/ui/monocle/X11Cursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "X11Cursor.java"


# static fields
.field private static final CURSOR_HEIGHT:I = 0x10

.field private static final CURSOR_WIDTH:I = 0x10

.field private static xLib:Lcom/sun/glass/ui/monocle/X;


# instance fields
.field private pixmap:J

.field private transparentCursor:J

.field private transparentCursorBuffer:Ljava/nio/ByteBuffer;

.field protected xdisplay:J

.field protected xwindow:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->getX()Lcom/sun/glass/ui/monocle/X;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method constructor <init>()V
    .locals 18

    .prologue
    .line 50
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X11Cursor;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    .line 51
    move-object v3, v1

    .line 52
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/NativePlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->platformGetNativeDisplay()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    .line 53
    move-object v3, v1

    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/NativePlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->platformGetNativeWindow()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->xwindow:J

    .line 57
    move-object v3, v1

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->transparentCursorBuffer:Ljava/nio/ByteBuffer;

    .line 58
    move-object v3, v1

    sget-object v4, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/X11Cursor;->xwindow:J

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/X11Cursor;->transparentCursorBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/sun/glass/ui/monocle/X;->XCreateBitmapFromData(JJLjava/nio/ByteBuffer;II)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->pixmap:J

    .line 60
    new-instance v3, Lcom/sun/glass/ui/monocle/X$XColor;

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v17

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/X$XColor;-><init>()V

    move-object v2, v3

    .line 61
    .local v2, "black":Lcom/sun/glass/ui/monocle/X$XColor;
    move-object v3, v2

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XColor;->p:J

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/X$XColor;->setRed(JI)V

    .line 62
    move-object v3, v2

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XColor;->p:J

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/X$XColor;->setGreen(JI)V

    .line 63
    move-object v3, v2

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XColor;->p:J

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/X$XColor;->setBlue(JI)V

    .line 64
    move-object v3, v1

    sget-object v4, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/X11Cursor;->pixmap:J

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/X11Cursor;->pixmap:J

    move-object v11, v2

    iget-wide v11, v11, Lcom/sun/glass/ui/monocle/X$XColor;->p:J

    move-object v13, v2

    iget-wide v13, v13, Lcom/sun/glass/ui/monocle/X$XColor;->p:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/sun/glass/ui/monocle/X;->XCreatePixmapCursor(JJJJJII)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->transparentCursor:J

    .line 66
    sget-object v3, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X11Cursor;->pixmap:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/X;->XFreePixmap(JJ)V

    .line 67
    return-void
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Cursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Cursor;
    return-object v0
.end method

.method setHotSpot(II)V
    .locals 0
    .param p1, "hotspotX"    # I
    .param p2, "hotspotY"    # I

    .prologue
    .line 112
    return-void
.end method

.method setImage([B)V
    .locals 0
    .param p1, "cursorImage"    # [B

    .prologue
    .line 98
    return-void
.end method

.method setLocation(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 107
    return-void
.end method

.method setVisibility(Z)V
    .locals 10

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X11Cursor;
    move v2, p1

    .local v2, "visibility":Z
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->isVisible:Z

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_1

    .line 82
    sget-object v3, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X11Cursor;->xwindow:J

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/X11Cursor;->transparentCursor:J

    invoke-virtual/range {v3 .. v9}, Lcom/sun/glass/ui/monocle/X;->XDefineCursor(JJJ)V

    .line 83
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 89
    :cond_0
    :goto_0
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->isVisible:Z

    .line 90
    return-void

    .line 84
    :cond_1
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/X11Cursor;->isVisible:Z

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    .line 86
    sget-object v3, Lcom/sun/glass/ui/monocle/X11Cursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X11Cursor;->xdisplay:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X11Cursor;->xwindow:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/X;->XUndefineCursor(JJ)V

    .line 87
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    goto :goto_0
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
