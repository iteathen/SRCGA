.class final Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
.super Ljava/lang/Object;
.source "NearbyPointsTouchFilter.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/TouchFilter;


# instance fields
.field private final radius:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/TouchInput;->getTouchRadius()I

    move-result v2

    iput v2, v1, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;->radius:I

    .line 34
    return-void
.end method

.method private mergeClosestPoints(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 15

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    move-object/from16 v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v12, -0x1

    move v2, v12

    .local v2, "pointIndex1":I
    const/4 v12, -0x1

    move v3, v12

    .line 53
    .local v3, "pointIndex2":I
    const v12, 0x7fffffff

    move v4, v12

    .line 54
    .local v4, "closestDistanceSquared":I
    const/4 v12, 0x0

    move v5, v12

    .local v5, "i":I
    :goto_0
    move v12, v5

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 55
    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v12

    .local v6, "j":I
    :goto_1
    move v12, v6

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 56
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v12

    move-object v7, v12

    .line 57
    .local v7, "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v12, v1

    move v13, v6

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v12

    move-object v8, v12

    .line 58
    .local v8, "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v12, v7

    iget v12, v12, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v13, v8

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    sub-int/2addr v12, v13

    move v9, v12

    .line 59
    .local v9, "dx":I
    move-object v12, v7

    iget v12, v12, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v13, v8

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    sub-int/2addr v12, v13

    move v10, v12

    .line 60
    .local v10, "dy":I
    move v12, v9

    move v13, v9

    mul-int/2addr v12, v13

    move v13, v10

    move v14, v10

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    move v11, v12

    .line 61
    .local v11, "distanceSquared":I
    move v12, v11

    move v13, v4

    if-ge v12, v13, :cond_0

    .line 62
    move v12, v11

    move v4, v12

    .line 63
    move v12, v5

    move v2, v12

    .line 64
    move v12, v6

    move v3, v12

    .line 55
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v7    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v8    # "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v11    # "distanceSquared":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v6    # "j":I
    :cond_2
    move v12, v4

    move-object v13, v0

    iget v13, v13, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;->radius:I

    move-object v14, v0

    iget v14, v14, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;->radius:I

    mul-int/2addr v13, v14

    if-ge v12, v13, :cond_3

    .line 69
    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v12

    move-object v5, v12

    .line 70
    .local v5, "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v12

    move-object v6, v12

    .line 71
    .local v6, "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v12, v5

    move-object v13, v5

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v14, v6

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    add-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 72
    move-object v12, v5

    move-object v13, v5

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v14, v6

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    add-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 73
    move-object v12, v1

    move-object v13, v6

    iget v13, v13, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/monocle/TouchState;->removePointForID(I)V

    .line 74
    const/4 v12, 0x1

    move v0, v12

    .line 76
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    .end local v5    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v6    # "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :goto_2
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    .local v5, "i":I
    :cond_3
    const/4 v12, 0x0

    move v0, v12

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return v0
.end method

.method public filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;->mergeClosestPoints(Lcom/sun/glass/ui/monocle/TouchState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return v0
.end method

.method public flush(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    const/16 v1, 0x64

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    const-string v1, "NearbyPoints"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NearbyPointsTouchFilter;
    return-object v0
.end method
