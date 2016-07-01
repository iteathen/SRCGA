.class Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
.super Ljava/lang/Object;
.source "ConcentricShapePair.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/ConcentricShapePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PairIterator"
.end annotation


# instance fields
.field inner:Lcom/sun/javafx/geom/PathIterator;

.field outer:Lcom/sun/javafx/geom/PathIterator;


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/PathIterator;Lcom/sun/javafx/geom/PathIterator;)V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    move-object v1, p1

    .local v1, "outer":Lcom/sun/javafx/geom/PathIterator;
    move-object v2, p2

    .local v2, "inner":Lcom/sun/javafx/geom/PathIterator;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 107
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    .line 108
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->inner:Lcom/sun/javafx/geom/PathIterator;

    .line 109
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v2}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->inner:Lcom/sun/javafx/geom/PathIterator;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v2

    move v0, v2

    .line 119
    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->inner:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->inner:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/ConcentricShapePair$PairIterator;->outer:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_0
.end method
