.class public Lcom/sun/scenario/effect/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# instance fields
.field private referent:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v2, v1

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Referent must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/FilterContext;->referent:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/scenario/effect/FilterContext;

    if-nez v3, :cond_0

    .line 54
    const/4 v3, 0x0

    move v0, v3

    .line 57
    .end local v0    # "this":Lcom/sun/scenario/effect/FilterContext;
    :goto_0
    return v0

    .line 56
    .restart local v0    # "this":Lcom/sun/scenario/effect/FilterContext;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/FilterContext;

    move-object v2, v3

    .line 57
    .local v2, "that":Lcom/sun/scenario/effect/FilterContext;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/FilterContext;->referent:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/scenario/effect/FilterContext;->referent:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public final getReferent()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/FilterContext;->referent:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/FilterContext;->referent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FilterContext;
    return v0
.end method
