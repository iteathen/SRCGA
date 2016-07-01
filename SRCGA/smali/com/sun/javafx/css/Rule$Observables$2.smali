.class Lcom/sun/javafx/css/Rule$Observables$2;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/css/Rule$Observables;-><init>(Lcom/sun/javafx/css/Rule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Lcom/sun/javafx/css/Declaration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/css/Rule$Observables;


# direct methods
.method constructor <init>(Lcom/sun/javafx/css/Rule$Observables;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/css/Rule$Observables;
    move-object v2, p2

    .local v2, "x0":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/Rule$Observables$2;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables$2;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Lcom/sun/javafx/css/Declaration;>;"
    :cond_0
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 279
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 280
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 281
    .local v2, "added":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .local v4, "max":I
    :goto_1
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 282
    move-object v8, v2

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Declaration;

    move-object v5, v8

    .line 283
    .local v5, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/Rule$Observables$2;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v9}, Lcom/sun/javafx/css/Rule$Observables;->access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    .line 285
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Rule$Observables$2;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v8}, Lcom/sun/javafx/css/Rule$Observables;->access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/css/Rule;->access$400(Lcom/sun/javafx/css/Rule;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v8

    move-object v6, v8

    .line 286
    .local v6, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 287
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 288
    .local v7, "stylesheetUrl":Ljava/lang/String;
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Declaration;->fixUrl(Ljava/lang/String;)V

    .line 281
    .end local v7    # "stylesheetUrl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    .end local v2    # "added":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v5    # "decl":Lcom/sun/javafx/css/Declaration;
    .end local v6    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 294
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 295
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    const/4 v8, 0x0

    move v3, v8

    .restart local v3    # "i":I
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .restart local v4    # "max":I
    :goto_2
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_4

    .line 296
    move-object v8, v2

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Declaration;

    move-object v5, v8

    .line 297
    .restart local v5    # "decl":Lcom/sun/javafx/css/Declaration;
    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/Rule$Observables$2;->this$0:Lcom/sun/javafx/css/Rule$Observables;

    invoke-static {v9}, Lcom/sun/javafx/css/Rule$Observables;->access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 298
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/css/Declaration;->rule:Lcom/sun/javafx/css/Rule;

    .line 295
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 301
    .end local v5    # "decl":Lcom/sun/javafx/css/Declaration;
    :cond_4
    goto/16 :goto_0

    .line 303
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    .end local v3    # "i":I
    .end local v4    # "max":I
    :cond_5
    return-void
.end method
