.class Lcom/sun/javafx/collections/MappingChange$2;
.super Ljava/util/AbstractList;
.source "MappingChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/MappingChange;->getRemoved()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TF;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/collections/MappingChange;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/MappingChange;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange$2;, "Lcom/sun/javafx/collections/MappingChange$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/collections/MappingChange;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/MappingChange$2;->this$0:Lcom/sun/javafx/collections/MappingChange;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange$2;, "Lcom/sun/javafx/collections/MappingChange$2;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/MappingChange$2;->this$0:Lcom/sun/javafx/collections/MappingChange;

    invoke-static {v2}, Lcom/sun/javafx/collections/MappingChange;->access$100(Lcom/sun/javafx/collections/MappingChange;)Lcom/sun/javafx/collections/MappingChange$Map;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/MappingChange$2;->this$0:Lcom/sun/javafx/collections/MappingChange;

    invoke-static {v3}, Lcom/sun/javafx/collections/MappingChange;->access$000(Lcom/sun/javafx/collections/MappingChange;)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javafx/collections/MappingChange$Map;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange$2;, "Lcom/sun/javafx/collections/MappingChange$2;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/MappingChange$2;, "Lcom/sun/javafx/collections/MappingChange$2;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/MappingChange$2;->this$0:Lcom/sun/javafx/collections/MappingChange;

    invoke-static {v1}, Lcom/sun/javafx/collections/MappingChange;->access$000(Lcom/sun/javafx/collections/MappingChange;)Ljavafx/collections/ListChangeListener$Change;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/MappingChange$2;, "Lcom/sun/javafx/collections/MappingChange$2;"
    return v0
.end method
