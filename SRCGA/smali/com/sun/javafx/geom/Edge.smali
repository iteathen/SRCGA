.class public final Lcom/sun/javafx/geom/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# static fields
.field static final GROW_PARTS:I = 0xa

.field static final INIT_PARTS:I = 0x4


# instance fields
.field activey:D

.field ctag:I

.field curve:Lcom/sun/javafx/geom/Curve;

.field equivalence:I

.field etag:I

.field private lastEdge:Lcom/sun/javafx/geom/Edge;

.field private lastLimit:D

.field private lastResult:I


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/Curve;I)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/Curve;
    move v2, p2

    .local v2, "ctag":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/geom/Edge;-><init>(Lcom/sun/javafx/geom/Curve;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Curve;II)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, p1

    .local v1, "c":Lcom/sun/javafx/geom/Curve;
    move v2, p2

    .local v2, "ctag":I
    move v3, p3

    .local v3, "etag":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/geom/Edge;->curve:Lcom/sun/javafx/geom/Curve;

    .line 44
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/geom/Edge;->ctag:I

    .line 45
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/Edge;->etag:I

    .line 46
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/javafx/geom/Edge;[D)I
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Edge;
    move-object v2, p2

    .local v2, "yrange":[D
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Edge;->lastEdge:Lcom/sun/javafx/geom/Edge;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 78
    move-object v4, v2

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 79
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    aput-wide v6, v4, v5

    .line 81
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Edge;->lastResult:I

    move v0, v4

    .line 104
    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    :goto_0
    return v0

    .line 83
    .restart local v0    # "this":Lcom/sun/javafx/geom/Edge;
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Edge;->lastEdge:Lcom/sun/javafx/geom/Edge;

    if-ne v4, v5, :cond_3

    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 84
    move-object v4, v2

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 85
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    aput-wide v6, v4, v5

    .line 87
    :cond_2
    const/4 v4, 0x0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Edge;->lastResult:I

    rsub-int/lit8 v4, v5, 0x0

    move v0, v4

    goto :goto_0

    .line 90
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Edge;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Edge;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Curve;->compareTo(Lcom/sun/javafx/geom/Curve;[D)I

    move-result v4

    move v3, v4

    .line 101
    .local v3, "ret":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/geom/Edge;->lastEdge:Lcom/sun/javafx/geom/Edge;

    .line 102
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    iput-wide v5, v4, Lcom/sun/javafx/geom/Edge;->lastLimit:D

    .line 103
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/Edge;->lastResult:I

    .line 104
    move v4, v3

    move v0, v4

    goto :goto_0
.end method

.method public getCurve()Lcom/sun/javafx/geom/Curve;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Edge;->curve:Lcom/sun/javafx/geom/Curve;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return-object v0
.end method

.method public getCurveTag()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Edge;->ctag:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return v0
.end method

.method public getEdgeTag()I
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Edge;->etag:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return v0
.end method

.method public getEquivalence()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Edge;->equivalence:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return v0
.end method

.method public isActiveFor(DI)Z
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move-wide v1, p1

    .local v1, "y":D
    move v3, p3

    .local v3, "etag":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Edge;->etag:I

    move v5, v3

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Edge;->activey:D

    move-wide v6, v1

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Edge;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public record(DI)V
    .locals 9

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Edge;
    move-wide v2, p1

    .local v2, "yend":D
    move v4, p3

    .local v4, "etag":I
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/javafx/geom/Edge;->activey:D

    .line 109
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Edge;->etag:I

    .line 110
    return-void
.end method

.method public setEdgeTag(I)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move v1, p1

    .local v1, "etag":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/Edge;->etag:I

    .line 62
    return-void
.end method

.method public setEquivalence(I)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    move v1, p1

    .local v1, "eq":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/geom/Edge;->equivalence:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Edge;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edge["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Edge;->curve:Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Edge;->ctag:I

    if-nez v2, :cond_0

    const-string v2, "L"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Edge;->etag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "I"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Edge;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Edge;
    :cond_0
    const-string v2, "R"

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Edge;->etag:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "O"

    goto :goto_1

    :cond_2
    const-string v2, "N"

    goto :goto_1
.end method
