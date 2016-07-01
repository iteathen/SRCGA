.class Ljavafx/collections/transformation/SortedList$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/transformation/SortedList;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/util/Comparator",
        "<-TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/collections/transformation/SortedList;


# direct methods
.method constructor <init>(Ljavafx/collections/transformation/SortedList;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/transformation/SortedList;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/transformation/SortedList$1;->this$0:Ljavafx/collections/transformation/SortedList;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/transformation/SortedList$1;->this$0:Ljavafx/collections/transformation/SortedList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    const-string v1, "comparator"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/transformation/SortedList$1;, "Ljavafx/collections/transformation/SortedList$1;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/transformation/SortedList$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    move-object v1, v2

    .line 128
    .local v1, "current":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/SortedList$1;->this$0:Ljavafx/collections/transformation/SortedList;

    move-object v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljavafx/collections/transformation/SortedList$ElementComparator;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/collections/transformation/SortedList$ElementComparator;-><init>(Ljava/util/Comparator;)V

    :goto_0
    invoke-static {v2, v3}, Ljavafx/collections/transformation/SortedList;->access$002(Ljavafx/collections/transformation/SortedList;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 129
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/transformation/SortedList$1;->this$0:Ljavafx/collections/transformation/SortedList;

    invoke-static {v2}, Ljavafx/collections/transformation/SortedList;->access$100(Ljavafx/collections/transformation/SortedList;)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
