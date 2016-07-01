.class Ljavafx/collections/transformation/FilteredList$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "FilteredList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/transformation/FilteredList;->predicateProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/util/function/Predicate",
        "<-TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/collections/transformation/FilteredList;


# direct methods
.method constructor <init>(Ljavafx/collections/transformation/FilteredList;)V
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/transformation/FilteredList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/transformation/FilteredList$1;->this$0:Ljavafx/collections/transformation/FilteredList;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList$1;->this$0:Ljavafx/collections/transformation/FilteredList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    const-string v1, "predicate"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/FilteredList$1;, "Ljavafx/collections/transformation/FilteredList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/FilteredList$1;->this$0:Ljavafx/collections/transformation/FilteredList;

    invoke-static {v1}, Ljavafx/collections/transformation/FilteredList;->access$000(Ljavafx/collections/transformation/FilteredList;)V

    .line 103
    return-void
.end method
