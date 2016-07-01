.class final Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
.super Ljava/lang/Object;
.source "AssignPointIDTouchFilter.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/TouchFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ids:Lcom/sun/glass/ui/monocle/IntSet;

.field private mappedIndices:[I

.field private nextID:I

.field private final oldState:Lcom/sun/glass/ui/monocle/TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    .line 33
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/IntSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/IntSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->ids:Lcom/sun/glass/ui/monocle/IntSet;

    .line 35
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    .line 38
    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/TouchInput;->getState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 39
    return-void
.end method

.method private acquireID()I
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->ids:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/IntSet;->addInt(I)V

    .line 44
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method private releaseID(I)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move v1, p1

    .local v1, "id":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->ids:Lcom/sun/glass/ui/monocle/IntSet;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/IntSet;->removeInt(I)V

    .line 50
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    .line 51
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->ids:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 52
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->ids:Lcom/sun/glass/ui/monocle/IntSet;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->nextID:I

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method public filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 18

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move-object/from16 v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v14

    if-nez v14, :cond_2

    .line 66
    const/4 v14, 0x0

    move v2, v14

    .local v2, "i":I
    :goto_0
    move v14, v2

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 67
    move-object v14, v1

    move v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v15, v0

    invoke-direct {v15}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->acquireID()I

    move-result v15

    iput v15, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_0
    :goto_1
    const/4 v14, 0x0

    move v2, v14

    .restart local v2    # "i":I
    :goto_2
    move v14, v2

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_f

    .line 153
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    move v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move v3, v14

    .line 154
    .local v3, "id":I
    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v4, v14

    .line 155
    .local v4, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v14, v4

    if-nez v14, :cond_1

    .line 156
    move-object v14, v0

    move v15, v3

    invoke-direct {v14, v15}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->releaseID(I)V

    .line 152
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 69
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_2
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v14

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-lt v14, v15, :cond_a

    .line 75
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    array-length v14, v14

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_4

    .line 76
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    new-array v15, v15, [I

    iput-object v15, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    .line 80
    :goto_3
    const/4 v14, 0x0

    move v2, v14

    .line 81
    .local v2, "mappedIndexCount":I
    const/4 v14, 0x0

    move v3, v14

    .local v3, "i":I
    :goto_4
    move v14, v3

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_7

    .line 82
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v4, v14

    .line 83
    .local v4, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v14, v4

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move v5, v14

    .line 84
    .local v5, "x":I
    move-object v14, v4

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move v6, v14

    .line 85
    .local v6, "y":I
    const v14, 0x7fffffff

    move v7, v14

    .line 86
    .local v7, "closestDistanceSquared":I
    const/4 v14, -0x1

    move v8, v14

    .line 87
    .local v8, "mappedIndex":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "j":I
    :goto_5
    move v14, v9

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 88
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    move v15, v9

    aget v14, v14, v15

    if-nez v14, :cond_3

    .line 89
    move-object v14, v1

    move v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v10, v14

    .line 90
    .local v10, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move v14, v5

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    sub-int/2addr v14, v15

    move v11, v14

    .line 91
    .local v11, "distanceX":I
    move v14, v6

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    sub-int/2addr v14, v15

    move v12, v14

    .line 92
    .local v12, "distanceY":I
    move v14, v11

    move v15, v11

    mul-int/2addr v14, v15

    move v15, v12

    move/from16 v16, v12

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v13, v14

    .line 93
    .local v13, "distanceSquared":I
    move v14, v13

    move v15, v7

    if-ge v14, v15, :cond_3

    .line 94
    move v14, v9

    move v8, v14

    .line 95
    move v14, v13

    move v7, v14

    .line 87
    .end local v10    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v11    # "distanceX":I
    .end local v12    # "distanceY":I
    .end local v13    # "distanceSquared":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 78
    .end local v2    # "mappedIndexCount":I
    .end local v3    # "i":I
    .end local v4    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "closestDistanceSquared":I
    .end local v8    # "mappedIndex":I
    .end local v9    # "j":I
    :cond_4
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    goto :goto_3

    .line 99
    .restart local v2    # "mappedIndexCount":I
    .restart local v3    # "i":I
    .restart local v4    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "closestDistanceSquared":I
    .restart local v8    # "mappedIndex":I
    .restart local v9    # "j":I
    :cond_5
    sget-boolean v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->$assertionsDisabled:Z

    if-nez v14, :cond_6

    move v14, v8

    if-gez v14, :cond_6

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 100
    :cond_6
    move-object v14, v1

    move v15, v8

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v15, v4

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    iput v15, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    move v15, v8

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 104
    .end local v4    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "closestDistanceSquared":I
    .end local v8    # "mappedIndex":I
    .end local v9    # "j":I
    :cond_7
    move v14, v2

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 105
    const/4 v14, 0x0

    move v3, v14

    :goto_6
    move v14, v3

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 106
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    move v15, v3

    aget v14, v14, v15

    if-nez v14, :cond_8

    .line 107
    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v15, v0

    invoke-direct {v15}, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->acquireID()I

    move-result v15

    iput v15, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 105
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 111
    :cond_9
    goto/16 :goto_1

    .line 118
    .end local v2    # "mappedIndexCount":I
    .end local v3    # "i":I
    :cond_a
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    array-length v14, v14

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 119
    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    new-array v15, v15, [I

    iput-object v15, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    .line 123
    :goto_7
    const/4 v14, 0x0

    move v2, v14

    .line 124
    .restart local v2    # "mappedIndexCount":I
    const/4 v14, 0x0

    move v3, v14

    .line 125
    .restart local v3    # "i":I
    :goto_8
    move v14, v3

    move-object v15, v1

    .line 124
    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_0

    move v14, v2

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    .line 125
    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 126
    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v4, v14

    .line 127
    .local v4, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v14, v4

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move v5, v14

    .line 128
    .restart local v5    # "x":I
    move-object v14, v4

    iget v14, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move v6, v14

    .line 130
    .restart local v6    # "y":I
    const v14, 0x7fffffff

    move v8, v14

    .line 131
    .local v8, "closestDistanceSquared":I
    const/4 v14, -0x1

    move v9, v14

    .line 132
    .local v9, "mappedIndex":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "j":I
    :goto_9
    move v14, v7

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 133
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    move v15, v7

    aget v14, v14, v15

    if-nez v14, :cond_b

    .line 134
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v10, v14

    .line 135
    .local v10, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move v14, v5

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    sub-int/2addr v14, v15

    move v11, v14

    .line 136
    .restart local v11    # "distanceX":I
    move v14, v6

    move-object v15, v10

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    sub-int/2addr v14, v15

    move v12, v14

    .line 137
    .restart local v12    # "distanceY":I
    move v14, v11

    move v15, v11

    mul-int/2addr v14, v15

    move v15, v12

    move/from16 v16, v12

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move v13, v14

    .line 138
    .restart local v13    # "distanceSquared":I
    move v14, v13

    move v15, v8

    if-ge v14, v15, :cond_b

    .line 139
    move v14, v7

    move v9, v14

    .line 140
    move v14, v13

    move v8, v14

    .line 132
    .end local v10    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v11    # "distanceX":I
    .end local v12    # "distanceY":I
    .end local v13    # "distanceSquared":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 121
    .end local v2    # "mappedIndexCount":I
    .end local v3    # "i":I
    .end local v4    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "j":I
    .end local v8    # "closestDistanceSquared":I
    .end local v9    # "mappedIndex":I
    :cond_c
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    goto :goto_7

    .line 144
    .restart local v2    # "mappedIndexCount":I
    .restart local v3    # "i":I
    .restart local v4    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "j":I
    .restart local v8    # "closestDistanceSquared":I
    .restart local v9    # "mappedIndex":I
    :cond_d
    sget-boolean v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->$assertionsDisabled:Z

    if-nez v14, :cond_e

    move v14, v9

    if-gez v14, :cond_e

    new-instance v14, Ljava/lang/AssertionError;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 145
    :cond_e
    move-object v14, v1

    move v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v15

    iget v15, v15, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    iput v15, v14, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->mappedIndices:[I

    move v15, v9

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 159
    .end local v3    # "i":I
    .end local v4    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "j":I
    .end local v8    # "closestDistanceSquared":I
    .end local v9    # "mappedIndex":I
    .local v2, "i":I
    :cond_f
    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v14, v15}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 160
    const/4 v14, 0x0

    move v0, v14

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method public flush(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    const-string v1, "AssignPointID"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AssignPointIDTouchFilter;
    return-object v0
.end method
