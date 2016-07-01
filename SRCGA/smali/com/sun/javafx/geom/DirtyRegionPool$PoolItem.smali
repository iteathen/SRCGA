.class Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
.super Ljava/lang/Object;
.source "DirtyRegionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/DirtyRegionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoolItem"
.end annotation


# instance fields
.field container:Lcom/sun/javafx/geom/DirtyRegionContainer;

.field final synthetic this$0:Lcom/sun/javafx/geom/DirtyRegionPool;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;J)V
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    move-object v1, p1

    move-object v2, p2

    .local v2, "container":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-wide v3, p3

    .local v3, "timeStamp":J
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->this$0:Lcom/sun/javafx/geom/DirtyRegionPool;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->container:Lcom/sun/javafx/geom/DirtyRegionContainer;

    .line 40
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->timeStamp:J

    .line 41
    return-void
.end method
