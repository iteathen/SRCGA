.class Ljavafx/stage/Window$2;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Window;


# direct methods
.method constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Window$2;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$2;->this$0:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$2;
    const-string v1, "focused"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$2;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Window$2;->get()Z

    move-result v2

    invoke-static {v1, v2}, Ljavafx/stage/Window;->access$200(Ljavafx/stage/Window;Z)V

    .line 421
    return-void
.end method
