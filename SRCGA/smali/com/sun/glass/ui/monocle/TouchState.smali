.class Lcom/sun/glass/ui/monocle/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/TouchState$Point;
    }
.end annotation


# static fields
.field private static pointIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sun/glass/ui/monocle/TouchState$Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pointCount:I

.field private points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

.field private primaryID:I

.field private window:Lcom/sun/glass/ui/monocle/MonocleWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/sun/glass/ui/monocle/TouchState$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/TouchState;->pointIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sun/glass/ui/monocle/TouchState$Point;

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    .line 70
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/TouchState$Point;Lcom/sun/glass/ui/monocle/TouchState$Point;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState;->lambda$static$78(Lcom/sun/glass/ui/monocle/TouchState$Point;Lcom/sun/glass/ui/monocle/TouchState$Point;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static synthetic lambda$static$78(Lcom/sun/glass/ui/monocle/TouchState$Point;Lcom/sun/glass/ui/monocle/TouchState$Point;)I
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v1, p1

    .local v1, "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    return v0
.end method


# virtual methods
.method addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;
    .locals 9

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, p1

    .local v1, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ne v2, v3, :cond_0

    .line 176
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    array-length v4, v4

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/glass/ui/monocle/TouchState$Point;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    .line 178
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    new-instance v4, Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/TouchState$Point;-><init>()V

    aput-object v4, v2, v3

    .line 181
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 182
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/TouchState$Point;->copyTo(Lcom/sun/glass/ui/monocle/TouchState$Point;)V

    .line 184
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return-object v0
.end method

.method assignPrimaryID()V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-nez v2, :cond_0

    .line 130
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    if-gtz v2, :cond_1

    .line 133
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_1
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v2, v3, :cond_3

    .line 136
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v3, v1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    if-ne v2, v3, :cond_2

    .line 138
    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    iput v3, v2, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    goto :goto_0
.end method

.method canBeFoldedWith(Lcom/sun/glass/ui/monocle/TouchState;Z)Z
    .locals 7

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, p1

    .local v1, "ts":Lcom/sun/glass/ui/monocle/TouchState;
    move v2, p2

    .local v2, "ignoreIDs":Z
    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-eq v4, v5, :cond_0

    .line 274
    const/4 v4, 0x0

    move v0, v4

    .line 284
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    :goto_0
    return v0

    .line 276
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 277
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 279
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v4, v5, :cond_3

    .line 280
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v5, v3

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v6, v3

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    if-eq v4, v5, :cond_2

    .line 281
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    .line 157
    return-void
.end method

.method clearWindow()V
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 162
    return-void
.end method

.method copyTo(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, p1

    .local v1, "target":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/TouchState;->clear()V

    .line 222
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v3, v4, :cond_0

    .line 223
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v3

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    iput v4, v3, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    .line 226
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 227
    return-void
.end method

.method equalsSorted(Lcom/sun/glass/ui/monocle/TouchState;)Z
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, p1

    .local v1, "ts":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v5, v1

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ne v5, v6, :cond_3

    move-object v5, v1

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    if-ne v5, v6, :cond_3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    if-ne v5, v6, :cond_3

    .line 253
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v5, v6, :cond_2

    .line 254
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 255
    .local v3, "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v6, v2

    aget-object v5, v5, v6

    move-object v4, v5

    .line 256
    .local v4, "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v6, v4

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    if-ne v5, v6, :cond_0

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    move-object v6, v4

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    if-ne v5, v6, :cond_0

    move-object v5, v3

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move-object v6, v4

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    if-eq v5, v6, :cond_1

    .line 257
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 262
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    .end local v2    # "i":I
    .end local v3    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v4    # "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :goto_1
    return v0

    .line 253
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    .restart local v2    # "i":I
    .restart local v3    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .restart local v4    # "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "p1":Lcom/sun/glass/ui/monocle/TouchState$Point;
    .end local v4    # "p2":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method getPoint(I)Lcom/sun/glass/ui/monocle/TouchState$Point;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return-object v0
.end method

.method getPointCount()I
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return v0
.end method

.method getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move v1, p1

    .local v1, "id":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v3, v4, :cond_2

    .line 115
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v4, v2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 116
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 119
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    :goto_1
    return-object v0

    .line 114
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method getPrimaryID()I
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return v0
.end method

.method getWindow(ZLcom/sun/glass/ui/monocle/MonocleWindow;)Lcom/sun/glass/ui/monocle/MonocleWindow;
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move v1, p1

    .local v1, "recalculateCache":Z
    move-object v2, p2

    .local v2, "fallback":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    if-nez v4, :cond_0

    .line 82
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 84
    :cond_0
    move v4, v1

    if-eqz v4, :cond_1

    .line 85
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 86
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    if-ltz v4, :cond_1

    .line 87
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->primaryID:I

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/TouchState;->getPointForID(I)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v4

    move-object v3, v4

    .line 88
    .local v3, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 89
    move-object v4, v0

    .line 90
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    move-object v7, v3

    iget v7, v7, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 91
    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getWindowForLocation(II)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    .line 95
    .end local v3    # "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->window:Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return-object v0
.end method

.method removePointForID(I)V
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move v1, p1

    .local v1, "id":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v3, v4, :cond_2

    .line 193
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v4, v2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 194
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 195
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 198
    :cond_0
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    .line 192
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    return-void
.end method

.method setPoint(ILcom/sun/glass/ui/monocle/TouchState$Point;)V
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-lt v3, v4, :cond_0

    .line 211
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 213
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/TouchState$Point;->copyTo(Lcom/sun/glass/ui/monocle/TouchState$Point;)V

    .line 214
    return-void
.end method

.method sortPointsByID()V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    sget-object v4, Lcom/sun/glass/ui/monocle/TouchState;->pointIdComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/TouchState;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 232
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->pointCount:I

    if-ge v3, v4, :cond_0

    .line 233
    move-object v3, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 234
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/TouchState;->points:[Lcom/sun/glass/ui/monocle/TouchState$Point;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    move-object v3, v1

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 237
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/TouchState;
    return-object v0
.end method
