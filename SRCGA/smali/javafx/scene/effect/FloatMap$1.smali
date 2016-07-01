.class Ljavafx/scene/effect/FloatMap$1;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "FloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/FloatMap;->widthProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/FloatMap;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/FloatMap;I)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/FloatMap;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/FloatMap$1;->this$0:Ljavafx/scene/effect/FloatMap;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap$1;->this$0:Ljavafx/scene/effect/FloatMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap$1;
    const-string v1, "width"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap$1;->this$0:Ljavafx/scene/effect/FloatMap;

    invoke-static {v1}, Ljavafx/scene/effect/FloatMap;->access$000(Ljavafx/scene/effect/FloatMap;)V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap$1;->this$0:Ljavafx/scene/effect/FloatMap;

    invoke-static {v1}, Ljavafx/scene/effect/FloatMap;->access$100(Ljavafx/scene/effect/FloatMap;)V

    .line 157
    return-void
.end method
