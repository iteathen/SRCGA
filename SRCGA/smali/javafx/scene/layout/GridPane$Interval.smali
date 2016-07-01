.class final Ljavafx/scene/layout/GridPane$Interval;
.super Ljava/lang/Object;
.source "GridPane.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/GridPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Interval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljavafx/scene/layout/GridPane$Interval;",
        ">;"
    }
.end annotation


# instance fields
.field public final begin:I

.field public final end:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 2495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$Interval;
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2496
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    .line 2497
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/scene/layout/GridPane$Interval;->end:I

    .line 2498
    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z
    .locals 4

    .prologue
    .line 2490
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$Interval;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane$Interval;->contains(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$Interval;
    return v0
.end method

.method static synthetic access$2700(Ljavafx/scene/layout/GridPane$Interval;)I
    .locals 2

    .prologue
    .line 2490
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$Interval;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$Interval;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$Interval;
    return v0
.end method

.method private contains(I)Z
    .locals 4

    .prologue
    .line 2506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$Interval;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move v3, v1

    if-gt v2, v3, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/GridPane$Interval;->end:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private size()I
    .locals 3

    .prologue
    .line 2510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$Interval;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 2490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$Interval;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/GridPane$Interval;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/GridPane$Interval;->compareTo(Ljavafx/scene/layout/GridPane$Interval;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    return v0
.end method

.method public compareTo(Ljavafx/scene/layout/GridPane$Interval;)I
    .locals 4

    .prologue
    .line 2502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$Interval;
    move-object v1, p1

    .local v1, "o":Ljavafx/scene/layout/GridPane$Interval;
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move-object v3, v1

    iget v3, v3, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move-object v3, v1

    iget v3, v3, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    sub-int/2addr v2, v3

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$Interval;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/layout/GridPane$Interval;->end:I

    move-object v3, v1

    iget v3, v3, Ljavafx/scene/layout/GridPane$Interval;->end:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method
