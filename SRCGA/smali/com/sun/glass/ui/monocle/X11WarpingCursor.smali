.class public Lcom/sun/glass/ui/monocle/X11WarpingCursor;
.super Lcom/sun/glass/ui/monocle/X11Cursor;
.source "X11WarpingCursor.java"


# static fields
.field private static xLib:Lcom/sun/glass/ui/monocle/X;


# instance fields
.field private nextX:I

.field private nextY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->getX()Lcom/sun/glass/ui/monocle/X;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11WarpingCursor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/X11Cursor;-><init>()V

    return-void
.end method


# virtual methods
.method setLocation(II)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11WarpingCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextX:I

    if-ne v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextY:I

    if-eq v3, v4, :cond_1

    .line 44
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextX:I

    .line 45
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextY:I

    .line 46
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 48
    :cond_1
    return-void
.end method

.method warp()V
    .locals 18

    .prologue
    .line 55
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X11WarpingCursor;
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->isVisible:Z

    if-eqz v3, :cond_1

    .line 56
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 57
    .local v2, "position":[I
    sget-object v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xdisplay:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xwindow:J

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/glass/ui/monocle/X;->XQueryPointer(JJ[I)V

    .line 58
    move-object v3, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextX:I

    if-ne v3, v4, :cond_0

    move-object v3, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextY:I

    if-eq v3, v4, :cond_1

    .line 59
    :cond_0
    sget-object v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->xdisplay:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v1

    iget v14, v14, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextX:I

    move-object v15, v2

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->nextY:I

    move-object/from16 v16, v2

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-int v15, v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/sun/glass/ui/monocle/X;->XWarpPointer(JJJIIIIII)V

    .line 64
    .end local v2    # "position":[I
    :cond_1
    return-void
.end method
