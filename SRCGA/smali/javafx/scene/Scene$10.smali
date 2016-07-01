.class Ljavafx/scene/Scene$10;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->cursorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$10;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$10;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$10;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$10;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$10;
    const-string v1, "cursor"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$10;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 1453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$10;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->markCursorDirty()V

    .line 1454
    return-void
.end method
