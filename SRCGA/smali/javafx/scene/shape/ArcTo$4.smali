.class Ljavafx/scene/shape/ArcTo$4;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "ArcTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/ArcTo;->largeArcFlagProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/ArcTo;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/ArcTo;)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/ArcTo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/ArcTo$4;->this$0:Ljavafx/scene/shape/ArcTo;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo$4;->this$0:Ljavafx/scene/shape/ArcTo;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo$4;
    const-string v1, "largeArcFlag"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ArcTo$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ArcTo$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/ArcTo$4;->this$0:Ljavafx/scene/shape/ArcTo;

    invoke-virtual {v1}, Ljavafx/scene/shape/ArcTo;->u()V

    .line 269
    return-void
.end method
