.class Ljavafx/scene/control/Tab$6;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Tab;->disableProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Tab;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tab;Z)V
    .locals 5

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tab;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Tab$6;->this$0:Ljavafx/scene/control/Tab;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab$6;->this$0:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$6;
    const-string v1, "disable"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab$6;->this$0:Ljavafx/scene/control/Tab;

    invoke-static {v1}, Ljavafx/scene/control/Tab;->access$100(Ljavafx/scene/control/Tab;)V

    .line 601
    return-void
.end method
