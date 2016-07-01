.class Ljavafx/scene/Group$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Group.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Group;->autoSizeChildrenProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Group;


# direct methods
.method constructor <init>(Ljavafx/scene/Group;Z)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Group;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Group$1;->this$0:Ljavafx/scene/Group;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group$1;->this$0:Ljavafx/scene/Group;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Group$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group$1;
    const-string v1, "autoSizeChildren"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Group$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group$1;->this$0:Ljavafx/scene/Group;

    invoke-virtual {v1}, Ljavafx/scene/Group;->requestLayout()V

    .line 132
    return-void
.end method
