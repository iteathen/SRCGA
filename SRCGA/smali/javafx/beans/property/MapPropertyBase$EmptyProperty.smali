.class Ljavafx/beans/property/MapPropertyBase$EmptyProperty;
.super Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;
.source "MapPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/MapPropertyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/MapPropertyBase;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/MapPropertyBase;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;->this$0:Ljavafx/beans/property/MapPropertyBase;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/MapPropertyBase;Ljavafx/beans/property/MapPropertyBase$1;)V
    .locals 5

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/MapPropertyBase;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/MapPropertyBase$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;-><init>(Ljavafx/beans/property/MapPropertyBase;)V

    return-void
.end method


# virtual methods
.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;->fireValueChangedEvent()V

    .line 144
    return-void
.end method

.method public get()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;->this$0:Ljavafx/beans/property/MapPropertyBase;

    invoke-virtual {v1}, Ljavafx/beans/property/MapPropertyBase;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;->this$0:Ljavafx/beans/property/MapPropertyBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    const-string v1, "empty"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase$EmptyProperty;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>.EmptyProperty;"
    return-object v0
.end method
