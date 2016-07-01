.class public Lcom/sun/javafx/geom/AreaOp$AddOp;
.super Lcom/sun/javafx/geom/AreaOp$CAGOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$AddOp;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/AreaOp$CAGOp;-><init>()V

    return-void
.end method


# virtual methods
.method public newClassification(ZZ)Z
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$AddOp;
    move v1, p1

    .local v1, "inLeft":Z
    move v2, p2

    .local v2, "inRight":Z
    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$AddOp;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$AddOp;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
