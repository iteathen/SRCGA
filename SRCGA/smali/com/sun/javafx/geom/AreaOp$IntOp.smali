.class public Lcom/sun/javafx/geom/AreaOp$IntOp;
.super Lcom/sun/javafx/geom/AreaOp$CAGOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$IntOp;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/AreaOp$CAGOp;-><init>()V

    return-void
.end method


# virtual methods
.method public newClassification(ZZ)Z
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$IntOp;
    move v1, p1

    .local v1, "inLeft":Z
    move v2, p2

    .local v2, "inRight":Z
    move v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$IntOp;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$IntOp;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
