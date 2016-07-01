.class public Lcom/sun/javafx/geom/AreaOp$NZWindOp;
.super Lcom/sun/javafx/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NZWindOp"
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/AreaOp;-><init>(Lcom/sun/javafx/geom/AreaOp$1;)V

    return-void
.end method


# virtual methods
.method public classify(Lcom/sun/javafx/geom/Edge;)I
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    move-object v1, p1

    .local v1, "e":Lcom/sun/javafx/geom/Edge;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/AreaOp$NZWindOp;->count:I

    move v2, v4

    .line 102
    .local v2, "newCount":I
    move v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 103
    .local v3, "type":I
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Curve;->getDirection()I

    move-result v5

    add-int/2addr v4, v5

    move v2, v4

    .line 104
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/geom/AreaOp$NZWindOp;->count:I

    .line 105
    move v4, v2

    if-nez v4, :cond_1

    const/4 v4, -0x1

    :goto_1
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    return v0

    .line 102
    .end local v3    # "type":I
    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    .restart local v3    # "type":I
    :cond_1
    move v4, v3

    goto :goto_1
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/AreaOp$NZWindOp;->count:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public newRow()V
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$NZWindOp;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/AreaOp$NZWindOp;->count:I

    .line 96
    return-void
.end method
