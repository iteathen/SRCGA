.class Ljavafx/beans/property/SetPropertyBase$SizeProperty;
.super Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;
.source "SetPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/SetPropertyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeProperty"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/SetPropertyBase;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/SetPropertyBase;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/SetPropertyBase$SizeProperty;->this$0:Ljavafx/beans/property/SetPropertyBase;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/SetPropertyBase;Ljavafx/beans/property/SetPropertyBase$1;)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/SetPropertyBase;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/SetPropertyBase$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/SetPropertyBase$SizeProperty;-><init>(Ljavafx/beans/property/SetPropertyBase;)V

    return-void
.end method


# virtual methods
.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyIntegerPropertyBase;->fireValueChangedEvent()V

    .line 113
    return-void
.end method

.method public get()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase$SizeProperty;->this$0:Ljavafx/beans/property/SetPropertyBase;

    invoke-virtual {v1}, Ljavafx/beans/property/SetPropertyBase;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SetPropertyBase$SizeProperty;->this$0:Ljavafx/beans/property/SetPropertyBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    const-string v1, "size"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SetPropertyBase$SizeProperty;, "Ljavafx/beans/property/SetPropertyBase<TE;>.SizeProperty;"
    return-object v0
.end method
