.class final Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
.super Ljava/lang/Object;
.source "SmallMoveTouchFilter.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/TouchFilter;


# instance fields
.field private final oldState:Lcom/sun/glass/ui/monocle/TouchState;

.field private final radius:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    .line 35
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/TouchInput;->getTouchRadius()I

    move-result v2

    iput v2, v1, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->radius:I

    .line 39
    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchInput;->getInstance()Lcom/sun/glass/ui/monocle/TouchInput;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/TouchInput;->getState(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return v0
.end method

.method public filter(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 11

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i":I
    :goto_0
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/TouchState;->getPointCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 50
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/TouchState;->getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v8

    move-object v3, v8

    .line 51
    .local v3, "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v8, v1

    move-object v9, v3

    iget v9, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v8

    move-object v4, v8

    .line 52
    .local v4, "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 53
    move-object v8, v4

    iget v8, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v9, v3

    iget v9, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    sub-int/2addr v8, v9

    move v5, v8

    .line 54
    .local v5, "dx":I
    move-object v8, v4

    iget v8, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v9, v3

    iget v9, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    sub-int/2addr v8, v9

    move v6, v8

    .line 55
    .local v6, "dy":I
    move v8, v5

    move v9, v5

    mul-int/2addr v8, v9

    move v9, v6

    move v10, v6

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    move v7, v8

    .line 56
    .local v7, "dist2":I
    move v8, v7

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->radius:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->radius:I

    mul-int/2addr v9, v10

    if-ge v8, v9, :cond_0

    .line 58
    move-object v8, v4

    move-object v9, v3

    iget v9, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    iput v9, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 59
    move-object v8, v4

    move-object v9, v3

    iget v9, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    iput v9, v8, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 49
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "dist2":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "oldPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v4    # "newPoint":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_1
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;->oldState:Lcom/sun/glass/ui/monocle/TouchState;

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/TouchState;->copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 64
    const/4 v8, 0x0

    move v0, v8

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return v0
.end method

.method public flush(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/TouchState;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    const/16 v1, -0x64

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    const-string v1, "SmallMove"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SmallMoveTouchFilter;
    return-object v0
.end method
