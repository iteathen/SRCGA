.class Lcom/sun/glass/ui/monocle/DispmanCursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "DispmanCursor.java"


# static fields
.field private static final CURSOR_HEIGHT:I = 0x10

.field private static final CURSOR_WIDTH:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    .line 45
    move-object v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/monocle/DispmanCursor;->_initDispmanCursor(II)V

    .line 46
    return-void
.end method

.method private native _initDispmanCursor(II)V
.end method

.method private native _setImage([B)V
.end method

.method private native _setLocation(II)V
.end method

.method private native _setVisible(Z)V
.end method

.method private updateImage(Z)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    move v1, p1

    .local v1, "always":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DispmanCursor.updateImage: not implemented"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    return-object v0
.end method

.method setHotSpot(II)V
    .locals 0
    .param p1, "hotspotX"    # I
    .param p2, "hotspotY"    # I

    .prologue
    .line 75
    return-void
.end method

.method setImage([B)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    move-object v1, p1

    .local v1, "cursorImage":[B
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/DispmanCursor;->_setImage([B)V

    .line 66
    return-void
.end method

.method setLocation(II)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/DispmanCursor;->_setLocation(II)V

    .line 71
    return-void
.end method

.method setVisibility(Z)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanCursor;
    move v1, p1

    .local v1, "visibility":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/monocle/DispmanCursor;->isVisible:Z

    .line 56
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/DispmanCursor;->_setVisible(Z)V

    .line 57
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
