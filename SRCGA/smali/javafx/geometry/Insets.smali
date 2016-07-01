.class public Ljavafx/geometry/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final EMPTY:Ljavafx/geometry/Insets;


# instance fields
.field private bottom:D

.field private hash:I

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 38
    new-instance v0, Ljavafx/geometry/Insets;

    move-object v10, v0

    move-object v0, v10

    move-object v1, v10

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    sput-object v0, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRightBottomLeft"
        .end annotation
    .end param

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-wide v1, p1

    .local v1, "topRightBottomLeft":D
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/geometry/Insets;->hash:I

    .line 92
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Insets;->top:D

    .line 93
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Insets;->right:D

    .line 94
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Insets;->bottom:D

    .line 95
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Insets;->left:D

    .line 96
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "top"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "right"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottom"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "left"
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-wide v1, p1

    .local v1, "top":D
    move-wide/from16 v3, p3

    .local v3, "right":D
    move-wide/from16 v5, p5

    .local v5, "bottom":D
    move-wide/from16 v7, p7

    .local v7, "left":D
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Ljavafx/geometry/Insets;->hash:I

    .line 79
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Ljavafx/geometry/Insets;->top:D

    .line 80
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Ljavafx/geometry/Insets;->right:D

    .line 81
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Ljavafx/geometry/Insets;->bottom:D

    .line 82
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Ljavafx/geometry/Insets;->left:D

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Insets;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 112
    .end local v1    # "this":Ljavafx/geometry/Insets;
    :goto_0
    return v1

    .line 106
    .restart local v1    # "this":Ljavafx/geometry/Insets;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/Insets;

    if-eqz v4, :cond_2

    .line 107
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/Insets;

    move-object v3, v4

    .line 108
    .local v3, "other":Ljavafx/geometry/Insets;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Insets;->top:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Insets;->top:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Insets;->right:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Insets;->right:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Insets;->bottom:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Insets;->bottom:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Insets;->left:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Insets;->left:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 112
    .end local v3    # "other":Ljavafx/geometry/Insets;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getBottom()D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Insets;->bottom:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Insets;
    return-wide v0
.end method

.method public final getLeft()D
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Insets;->left:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Insets;
    return-wide v0
.end method

.method public final getRight()D
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Insets;->right:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Insets;
    return-wide v0
.end method

.method public final getTop()D
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Insets;->top:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Insets;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 121
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Insets;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Insets;->hash:I

    if-nez v4, :cond_0

    .line 122
    const-wide/16 v4, 0x11

    move-wide v2, v4

    .line 123
    .local v2, "bits":J
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Insets;->top:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 124
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Insets;->right:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 125
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Insets;->bottom:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 126
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Insets;->left:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 127
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/Insets;->hash:I

    .line 129
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Insets;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/Insets;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Insets;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insets [top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Insets;->top:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Insets;->right:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Insets;->bottom:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Insets;->left:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Insets;
    return-object v0
.end method
