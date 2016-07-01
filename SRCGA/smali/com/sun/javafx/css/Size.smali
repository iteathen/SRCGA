.class public final Lcom/sun/javafx/css/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final units:Lcom/sun/javafx/css/SizeUnits;

.field private final value:D


# direct methods
.method public constructor <init>(DLcom/sun/javafx/css/SizeUnits;)V
    .locals 9

    .prologue
    .line 37
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Size;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, p3

    .local v4, "units":Lcom/sun/javafx/css/SizeUnits;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/javafx/css/Size;->value:D

    .line 39
    move-object v5, v1

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    :goto_0
    iput-object v6, v5, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    .line 40
    return-void

    .line 39
    :cond_0
    sget-object v6, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Size;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v10, v1

    move-object v11, v2

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    move v1, v10

    .line 153
    .end local v1    # "this":Lcom/sun/javafx/css/Size;
    :goto_0
    return v1

    .line 121
    .restart local v1    # "this":Lcom/sun/javafx/css/Size;
    :cond_0
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 122
    :cond_1
    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 124
    :cond_2
    move-object v10, v2

    check-cast v10, Lcom/sun/javafx/css/Size;

    move-object v3, v10

    .line 126
    .local v3, "other":Lcom/sun/javafx/css/Size;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    if-eq v10, v11, :cond_3

    .line 127
    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 130
    :cond_3
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/css/Size;->value:D

    cmpl-double v10, v10, v12

    if-nez v10, :cond_4

    .line 131
    const/4 v10, 0x1

    move v1, v10

    goto :goto_0

    .line 134
    :cond_4
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_7

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_8

    .line 144
    :cond_5
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    :goto_1
    move-wide v4, v10

    .line 145
    .local v4, "v0":D
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_a

    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    :goto_2
    move-wide v6, v10

    .line 146
    .local v6, "v1":D
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    move-object v12, v3

    iget-wide v12, v12, Lcom/sun/javafx/css/Size;->value:D

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 147
    .local v8, "diff":D
    move-wide v10, v8

    const-wide v12, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_6

    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_b

    .line 148
    :cond_6
    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 134
    .end local v4    # "v0":D
    .end local v6    # "v1":D
    .end local v8    # "diff":D
    :cond_7
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_5

    .line 153
    :cond_8
    const/4 v10, 0x0

    move v1, v10

    goto/16 :goto_0

    .line 144
    :cond_9
    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    neg-double v10, v10

    goto :goto_1

    .line 145
    .restart local v4    # "v0":D
    :cond_a
    move-object v10, v3

    iget-wide v10, v10, Lcom/sun/javafx/css/Size;->value:D

    neg-double v10, v10

    goto :goto_2

    .line 151
    .restart local v6    # "v1":D
    .restart local v8    # "diff":D
    :cond_b
    const/4 v10, 0x1

    move v1, v10

    goto/16 :goto_0
.end method

.method public getUnits()Lcom/sun/javafx/css/SizeUnits;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-object v0
.end method

.method public getValue()D
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/css/Size;->value:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 112
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Size;
    const-wide/16 v4, 0x11

    move-wide v2, v4

    .line 113
    .local v2, "bits":J
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/css/Size;->value:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 114
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v6}, Lcom/sun/javafx/css/SizeUnits;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 115
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/css/Size;
    return v1
.end method

.method public isAbsolute()Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v1}, Lcom/sun/javafx/css/SizeUnits;->isAbsolute()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return v0
.end method

.method public pixels()D
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/javafx/css/Size;->pixels(DLjavafx/scene/text/Font;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-wide v0
.end method

.method public pixels(D)D
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-wide v1, p1

    .local v1, "multiplier":D
    move-object v3, v0

    move-wide v4, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/css/Size;->pixels(DLjavafx/scene/text/Font;)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-wide v0
.end method

.method public pixels(DLjavafx/scene/text/Font;)D
    .locals 11

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Size;
    move-wide v2, p1

    .local v2, "multiplier":D
    move-object v4, p3

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/css/Size;->value:D

    move-wide v8, v2

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/css/SizeUnits;->pixels(DDLjavafx/scene/text/Font;)D

    move-result-wide v5

    move-wide v1, v5

    .end local v1    # "this":Lcom/sun/javafx/css/Size;
    return-wide v1
.end method

.method public pixels(Ljavafx/scene/text/Font;)D
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/css/Size;->pixels(DLjavafx/scene/text/Font;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-wide v0
.end method

.method public points(DLjavafx/scene/text/Font;)D
    .locals 11

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/Size;
    move-wide v2, p1

    .local v2, "multiplier":D
    move-object v4, p3

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/css/Size;->value:D

    move-wide v8, v2

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/javafx/css/SizeUnits;->points(DDLjavafx/scene/text/Font;)D

    move-result-wide v5

    move-wide v1, v5

    .end local v1    # "this":Lcom/sun/javafx/css/Size;
    return-wide v1
.end method

.method public points(Ljavafx/scene/text/Font;)D
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/css/Size;->points(DLjavafx/scene/text/Font;)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Size;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/css/Size;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/Size;->units:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v2}, Lcom/sun/javafx/css/SizeUnits;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Size;
    return-object v0
.end method
