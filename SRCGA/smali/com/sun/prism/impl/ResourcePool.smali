.class public interface abstract Lcom/sun/prism/impl/ResourcePool;
.super Ljava/lang/Object;
.source "ResourcePool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract freeDisposalRequestedAndCheckResources(Z)V
.end method

.method public abstract isManagerThread()Z
.end method

.method public abstract managed()J
.end method

.method public abstract max()J
.end method

.method public abstract origTarget()J
.end method

.method public abstract prepareForAllocation(J)Z
.end method

.method public abstract recordAllocated(J)V
.end method

.method public abstract recordFree(J)V
.end method

.method public abstract resourceFreed(Lcom/sun/prism/impl/ManagedResource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract resourceManaged(Lcom/sun/prism/impl/ManagedResource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setTarget(J)V
.end method

.method public abstract size(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public abstract target()J
.end method

.method public abstract used()J
.end method
