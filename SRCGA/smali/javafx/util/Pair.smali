.class public Ljavafx/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "value"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    .line 66
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 125
    .end local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    :goto_0
    return v0

    .line 119
    .restart local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/util/Pair;

    if-eqz v3, :cond_7

    .line 120
    move-object v3, v1

    check-cast v3, Ljavafx/util/Pair;

    move-object v2, v3

    .line 121
    .local v2, "pair":Ljavafx/util/Pair;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    iget-object v3, v3, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 122
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v2

    iget-object v3, v3, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 123
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 125
    .end local v2    # "pair":Ljavafx/util/Pair;
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    mul-int/lit8 v1, v1, 0xd

    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/util/Pair;, "Ljavafx/util/Pair<TK;TV;>;"
    return-object v0
.end method
