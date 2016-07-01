.class public abstract Lcom/sun/javafx/geom/AreaOp$CAGOp;
.super Lcom/sun/javafx/geom/AreaOp;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/AreaOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CAGOp"
.end annotation


# instance fields
.field inLeft:Z

.field inResult:Z

.field inRight:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/AreaOp;-><init>(Lcom/sun/javafx/geom/AreaOp$1;)V

    return-void
.end method


# virtual methods
.method public classify(Lcom/sun/javafx/geom/Edge;)I
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    move-object v1, p1

    .local v1, "e":Lcom/sun/javafx/geom/Edge;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Edge;->getCurveTag()I

    move-result v3

    if-nez v3, :cond_1

    .line 47
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inLeft:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inLeft:Z

    .line 51
    :goto_1
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inLeft:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inRight:Z

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$CAGOp;->newClassification(ZZ)Z

    move-result v3

    move v2, v3

    .line 52
    .local v2, "newClass":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inResult:Z

    move v4, v2

    if-ne v3, v4, :cond_3

    .line 53
    const/4 v3, 0x0

    move v0, v3

    .line 56
    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    :goto_2
    return v0

    .line 47
    .end local v2    # "newClass":Z
    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inRight:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v3, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inRight:Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 55
    .restart local v2    # "newClass":Z
    :cond_3
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inResult:Z

    .line 56
    move v3, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    goto :goto_4
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inResult:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public abstract newClassification(ZZ)Z
.end method

.method public newRow()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp$CAGOp;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inLeft:Z

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inRight:Z

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/geom/AreaOp$CAGOp;->inResult:Z

    .line 43
    return-void
.end method
