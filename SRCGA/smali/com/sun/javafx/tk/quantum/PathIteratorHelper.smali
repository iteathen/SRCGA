.class Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
.super Ljava/lang/Object;
.source "PathIteratorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;
    }
.end annotation


# instance fields
.field private f:[F

.field private itr:Lcom/sun/javafx/geom/PathIterator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/PathIterator;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    move-object v1, p1

    .local v1, "itr":Lcom/sun/javafx/geom/PathIterator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->itr:Lcom/sun/javafx/geom/PathIterator;

    .line 45
    return-void
.end method


# virtual methods
.method public currentSegment(Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;)I
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    move-object v1, p1

    .local v1, "struct":Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->itr:Lcom/sun/javafx/geom/PathIterator;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    invoke-interface {v3, v4}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v3

    move v2, v3

    .line 96
    .local v2, "ret":I
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f0:F

    .line 97
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f1:F

    .line 98
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f2:F

    .line 99
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f3:F

    .line 100
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f4:F

    .line 101
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->f:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f5:F

    .line 102
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    return v0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->itr:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->itr:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->itr:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 71
    return-void
.end method
