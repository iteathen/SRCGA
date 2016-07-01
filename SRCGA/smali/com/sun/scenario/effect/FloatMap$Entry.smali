.class Lcom/sun/scenario/effect/FloatMap$Entry;
.super Ljava/lang/Object;
.source "FloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/FloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field texture:Lcom/sun/scenario/effect/LockableResource;

.field valid:Z


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/LockableResource;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap$Entry;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/scenario/effect/LockableResource;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 237
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    .line 238
    return-void
.end method
