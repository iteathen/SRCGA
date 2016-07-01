.class Ljavafx/beans/binding/SetBinding$EmptyProperty;
.super Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;
.source "SetBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/SetBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/SetBinding;


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/SetBinding;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding$EmptyProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/SetBinding;Ljavafx/beans/binding/SetBinding$1;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/SetBinding;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/binding/SetBinding$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/binding/SetBinding$EmptyProperty;-><init>(Ljavafx/beans/binding/SetBinding;)V

    return-void
.end method


# virtual methods
.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyBooleanPropertyBase;->fireValueChangedEvent()V

    .line 142
    return-void
.end method

.method public get()Z
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding$EmptyProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding$EmptyProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    const-string v1, "empty"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$EmptyProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.EmptyProperty;"
    return-object v0
.end method
