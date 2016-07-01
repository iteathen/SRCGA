.class abstract Lcom/sun/glass/ui/monocle/NativeCursor;
.super Ljava/lang/Object;
.source "NativeCursor.java"


# instance fields
.field protected isVisible:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/NativeCursor;->isVisible:Z

    return-void
.end method


# virtual methods
.method abstract getBestSize()Lcom/sun/glass/ui/Size;
.end method

.method getVisiblity()Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/NativeCursor;->isVisible:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativeCursor;
    return v0
.end method

.method abstract setHotSpot(II)V
.end method

.method abstract setImage([B)V
.end method

.method abstract setLocation(II)V
.end method

.method abstract setVisibility(Z)V
.end method

.method abstract shutdown()V
.end method
