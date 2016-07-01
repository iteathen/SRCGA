.class public final Lcom/sun/javafx/css/StyleCacheEntry$Key;
.super Ljava/lang/Object;
.source "StyleCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleCacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field private final fontSize:D

.field private hash:I

.field private final pseudoClassStates:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/util/Set;Ljavafx/scene/text/Font;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v2, p1

    .local v2, "pseudoClassStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v3, p2

    .local v3, "font":Ljavafx/scene/text/Font;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v5, v1

    const/high16 v6, -0x80000000

    iput v6, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    .line 69
    move-object v5, v1

    move-object v6, v2

    array-length v6, v6

    new-array v6, v6, [Ljava/util/Set;

    iput-object v6, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    .line 70
    const/4 v5, 0x0

    move v4, v5

    .local v4, "n":I
    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 71
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    move v6, v4

    new-instance v7, Lcom/sun/javafx/css/PseudoClassState;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    aput-object v7, v5, v6

    .line 72
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_0
    move-object v5, v1

    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v6

    :goto_1
    iput-wide v6, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->fontSize:D

    .line 76
    return-void

    .line 74
    :cond_1
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v6

    goto :goto_1
.end method

.method public static hashCode(D)I
    .locals 10

    .prologue
    .line 83
    move-wide v0, p0

    .local v0, "value":D
    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-wide v2, v4

    .line 84
    .local v2, "bits":J
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v0, v4

    .end local v0    # "value":D
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 12

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v0

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    move v0, v8

    .line 157
    .end local v0    # "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    :goto_0
    return v0

    .line 111
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    :cond_0
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 113
    :cond_2
    move-object v8, v1

    check-cast v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;

    move-object v2, v8

    .line 115
    .local v2, "other":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    if-eq v8, v9, :cond_3

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 126
    :cond_3
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->fontSize:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/css/StyleCacheEntry$Key;->fontSize:D

    sub-double/2addr v8, v10

    move-wide v3, v8

    .line 128
    .local v3, "diff":D
    move-wide v8, v3

    const-wide v10, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_4

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v10, v3

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 129
    :cond_4
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 133
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    xor-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 134
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 133
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 138
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    if-nez v8, :cond_9

    .line 139
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 142
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    array-length v8, v8

    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    array-length v9, v9

    if-eq v8, v9, :cond_a

    .line 143
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 146
    :cond_a
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_3
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    array-length v9, v9

    if-ge v8, v9, :cond_e

    .line 148
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 149
    .local v6, "this_pcs":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    move v9, v5

    aget-object v8, v8, v9

    move-object v7, v8

    .line 152
    .local v7, "other_pcs":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v8, v6

    if-nez v8, :cond_c

    move-object v8, v7

    if-eqz v8, :cond_d

    .line 153
    :cond_b
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 152
    :cond_c
    move-object v8, v6

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 146
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 157
    .end local v6    # "this_pcs":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v7    # "other_pcs":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_e
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_2

    .line 91
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/css/StyleCacheEntry$Key;->fontSize:D

    invoke-static {v6, v7}, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hashCode(D)I

    move-result v6

    iput v6, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    .line 93
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    array-length v5, v5

    :goto_0
    move v2, v5

    .line 95
    .local v2, "iMax":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 97
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 98
    .local v4, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 99
    move-object v5, v1

    const/16 v6, 0x43

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Set;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    .line 95
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    .end local v2    # "iMax":I
    .end local v3    # "i":I
    .end local v4    # "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 103
    :cond_2
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/css/StyleCacheEntry$Key;->hash:I

    move v1, v5

    .end local v1    # "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/StyleCacheEntry$Key;->pseudoClassStates:[Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/css/StyleCacheEntry$Key;->fontSize:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    return-object v0
.end method
