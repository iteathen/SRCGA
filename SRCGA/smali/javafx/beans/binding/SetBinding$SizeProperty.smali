.class Ljavafx/beans/binding/SetBinding$SizeProperty;
.super Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;
.source "SetBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/SetBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/SetBinding;


# direct methods
.method private constructor <init>(Ljavafx/beans/binding/SetBinding;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding$SizeProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/SetBinding;Ljavafx/beans/binding/SetBinding$1;)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/SetBinding;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/binding/SetBinding$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/binding/SetBinding$SizeProperty;-><init>(Ljavafx/beans/binding/SetBinding;)V

    return-void
.end method


# virtual methods
.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;->fireValueChangedEvent()V

    .line 112
    return-void
.end method

.method public get()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding$SizeProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding$SizeProperty;->this$0:Ljavafx/beans/binding/SetBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    const-string v1, "size"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding$SizeProperty;, "Ljavafx/beans/binding/SetBinding<TE;>.SizeProperty;"
    return-object v0
.end method
