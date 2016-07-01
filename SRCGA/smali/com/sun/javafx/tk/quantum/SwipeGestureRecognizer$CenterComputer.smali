.class Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
.super Ljava/lang/Object;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterComputer"
.end annotation


# instance fields
.field count:I

.field totalAbsX:D

.field totalAbsY:D

.field totalX:D

.field totalY:D


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 177
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsX:D

    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsY:D

    .line 178
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalX:D

    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalY:D

    .line 179
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;)V
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;-><init>()V

    return-void
.end method


# virtual methods
.method public add(DDDD)V
    .locals 15

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "xAbs":D
    move-wide/from16 v7, p7

    .local v7, "yAbs":D
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsX:D

    move-wide v12, v5

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsX:D

    .line 183
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsY:D

    move-wide v12, v7

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsY:D

    .line 184
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalX:D

    move-wide v12, v1

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalX:D

    .line 185
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalY:D

    move-wide v12, v3

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalY:D

    .line 187
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    .line 188
    return-void
.end method

.method public getAbsX()D
    .locals 6

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsX:D

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getAbsY()D
    .locals 6

    .prologue
    .line 203
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsY:D

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getX()D
    .locals 6

    .prologue
    .line 191
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalX:D

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public getY()D
    .locals 6

    .prologue
    .line 195
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalY:D

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalX:D

    .line 208
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalY:D

    .line 209
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsX:D

    .line 210
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->totalAbsY:D

    .line 211
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/tk/quantum/SwipeGestureRecognizer$CenterComputer;->count:I

    .line 212
    return-void
.end method
