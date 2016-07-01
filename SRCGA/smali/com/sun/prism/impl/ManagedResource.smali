.class public abstract Lcom/sun/prism/impl/ManagedResource;
.super Ljava/lang/Object;
.source "ManagedResource.java"

# interfaces
.implements Lcom/sun/prism/GraphicsResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/prism/GraphicsResource;"
    }
.end annotation


# static fields
.field static final trackLockSources:Z


# instance fields
.field private age:I

.field private disposalRequested:Z

.field private employcount:I

.field private lockcount:I

.field lockedFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private mismatchDetected:Z

.field private permanent:Z

.field private final pool:Lcom/sun/prism/impl/ResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/sun/prism/impl/ResourcePool;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "pool":Lcom/sun/prism/impl/ResourcePool;, "Lcom/sun/prism/impl/ResourcePool<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    .line 57
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/impl/ManagedResource;->pool:Lcom/sun/prism/impl/ResourcePool;

    .line 61
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/impl/ManagedResource;->manage()V

    .line 62
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ManagedResource;->lock()Ljava/lang/Object;

    move-result-object v3

    .line 63
    return-void
.end method

.method static _isgone(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 42
    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    :goto_0
    return v0

    .line 36
    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->free()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    .line 40
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 42
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private manage()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ManagedResource;->pool:Lcom/sun/prism/impl/ResourcePool;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/prism/impl/ResourcePool;->resourceManaged(Lcom/sun/prism/impl/ManagedResource;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final assertLocked()V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    if-gtz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operation requires resource lock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    return-void
.end method

.method public final bumpAge(I)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move v1, p1

    .local v1, "forever":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ManagedResource;->age:I

    move v2, v3

    .line 185
    .local v2, "a":I
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 186
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/prism/impl/ManagedResource;->age:I

    .line 188
    :cond_0
    return-void
.end method

.method public final contentsNotUseful()V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    if-gtz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Resource obsoleted too many times"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    .line 173
    return-void
.end method

.method public final contentsUseful()V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->assertLocked()V

    .line 165
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    .line 166
    return-void
.end method

.method public final dispose()V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ManagedResource;->pool:Lcom/sun/prism/impl/ResourcePool;

    invoke-interface {v2}, Lcom/sun/prism/impl/ResourcePool;->isManagerThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    move-object v1, v2

    .line 123
    .local v1, "r":Ljava/lang/Object;, "TT;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/ManagedResource;->free()V

    .line 125
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    .line 126
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ManagedResource;->pool:Lcom/sun/prism/impl/ResourcePool;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/sun/prism/impl/ResourcePool;->resourceFreed(Lcom/sun/prism/impl/ManagedResource;)V

    .line 129
    .line 132
    .end local v1    # "r":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    goto :goto_0
.end method

.method public free()V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return-void
.end method

.method public getAge()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->age:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method

.method public final getInterestCount()I
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method

.method public final getLockCount()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method

.method public final getPool()Lcom/sun/prism/impl/ResourcePool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ManagedResource;->pool:Lcom/sun/prism/impl/ResourcePool;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return-object v0
.end method

.method public final getResource()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->assertLocked()V

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return-object v0
.end method

.method public isDisposalRequested()Z
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method

.method public final isInteresting()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->employcount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isLocked()Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isPermanent()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ManagedResource;->permanent:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ManagedResource;->disposalRequested:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final lock()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    .line 141
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->age:I

    .line 145
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return-object v0
.end method

.method public final makePermanent()V
    .locals 3

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->assertLocked()V

    .line 136
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/impl/ManagedResource;->permanent:Z

    .line 137
    return-void
.end method

.method public final setMismatched()V
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/prism/impl/ManagedResource;->mismatchDetected:Z

    .line 181
    return-void
.end method

.method public final unlock()V
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->assertLocked()V

    .line 157
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    .line 161
    return-void
.end method

.method unlockall()V
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/ManagedResource;->lockcount:I

    .line 153
    return-void
.end method

.method public final wasMismatched()Z
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ManagedResource;->mismatchDetected:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    return v0
.end method
