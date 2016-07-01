.class Ljavafx/scene/shape/PathElement$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "PathElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/PathElement;->absoluteProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/PathElement;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/PathElement;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/PathElement;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/PathElement$1;->this$0:Ljavafx/scene/shape/PathElement;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement$1;->this$0:Ljavafx/scene/shape/PathElement;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/PathElement$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement$1;
    const-string v1, "absolute"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/PathElement$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement$1;->this$0:Ljavafx/scene/shape/PathElement;

    invoke-virtual {v1}, Ljavafx/scene/shape/PathElement;->u()V

    .line 100
    return-void
.end method
