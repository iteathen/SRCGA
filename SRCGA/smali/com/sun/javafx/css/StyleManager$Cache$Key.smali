.class Lcom/sun/javafx/css/StyleManager$Cache$Key;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field final inlineStyle:Ljava/lang/String;

.field final key:[J


# direct methods
.method constructor <init>([JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 2070
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    move-object v1, p1

    .local v1, "key":[J
    move-object v2, p2

    .local v2, "inlineStyle":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2071
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->key:[J

    .line 2073
    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    .line 2074
    return-void

    .line 2073
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 2090
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 2091
    const/4 v3, 0x0

    move v0, v3

    .line 2103
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    :goto_0
    return v0

    .line 2093
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 2094
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2096
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;

    move-object v2, v3

    .line 2097
    .local v2, "other":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2098
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2097
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2100
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->key:[J

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$Cache$Key;->key:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2101
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2103
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 2082
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    const/4 v2, 0x3

    move v1, v2

    .line 2083
    .local v1, "hash":I
    const/16 v2, 0x11

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->key:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 2084
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 2085
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2077
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/StyleManager$Cache$Key;->key:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Cache$Key;->inlineStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
