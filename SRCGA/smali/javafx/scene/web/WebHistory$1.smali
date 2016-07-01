.class Ljavafx/scene/web/WebHistory$1;
.super Ljava/lang/Object;
.source "WebHistory.java"

# interfaces
.implements Lcom/sun/webkit/event/WCChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebHistory;-><init>(Lcom/sun/webkit/WebPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Ljavafx/scene/web/WebHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/web/WebHistory$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavafx/scene/web/WebHistory;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebHistory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(Lcom/sun/webkit/event/WCChangeEvent;)V
    .locals 11

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebHistory$1;
    move-object v1, p1

    .local v1, "e":Lcom/sun/webkit/event/WCChangeEvent;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 171
    sget-boolean v4, Ljavafx/scene/web/WebHistory$1;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 172
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Ljavafx/scene/web/WebHistory$Entry;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v8}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/webkit/BackForwardList;->getCurrentEntry()Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/web/WebHistory$Entry;-><init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;Ljavafx/scene/web/WebHistory$1;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 174
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljavafx/scene/web/WebHistory;->access$500(Ljavafx/scene/web/WebHistory;I)V

    .line 175
    .line 215
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 180
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    sget-boolean v4, Ljavafx/scene/web/WebHistory$1;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 184
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v4

    move-object v2, v4

    .line 185
    .local v2, "last":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v4

    move-object v3, v4

    .line 188
    .local v3, "first":Lcom/sun/webkit/BackForwardList$Entry;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/web/WebHistory$Entry;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/web/WebHistory$Entry;->isPeer(Lcom/sun/webkit/BackForwardList$Entry;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v5

    invoke-static {v4, v5}, Ljavafx/scene/web/WebHistory;->access$500(Ljavafx/scene/web/WebHistory;I)V

    .line 190
    goto/16 :goto_0

    .line 195
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/web/WebHistory$Entry;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/web/WebHistory$Entry;->isPeer(Lcom/sun/webkit/BackForwardList$Entry;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 196
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 197
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Ljavafx/scene/web/WebHistory$Entry;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/web/WebHistory$Entry;-><init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;Ljavafx/scene/web/WebHistory$1;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 198
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v5

    invoke-static {v4, v5}, Ljavafx/scene/web/WebHistory;->access$500(Ljavafx/scene/web/WebHistory;I)V

    .line 199
    goto/16 :goto_0

    .line 207
    .end local v2    # "last":Lcom/sun/webkit/BackForwardList$Entry;
    .end local v3    # "first":Lcom/sun/webkit/BackForwardList$Entry;
    :cond_5
    sget-boolean v4, Ljavafx/scene/web/WebHistory$1;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-le v4, v5, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 208
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList;->size()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v6}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 209
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 210
    .local v2, "lastIndex":I
    move v4, v2

    if-ltz v4, :cond_7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/web/WebHistory$Entry;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/web/WebHistory$Entry;->isPeer(Lcom/sun/webkit/BackForwardList$Entry;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 211
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 212
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v4}, Ljavafx/scene/web/WebHistory;->access$300(Ljavafx/scene/web/WebHistory;)Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Ljavafx/scene/web/WebHistory$Entry;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v8}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/webkit/BackForwardList;->get(I)Lcom/sun/webkit/BackForwardList$Entry;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/web/WebHistory$Entry;-><init>(Ljavafx/scene/web/WebHistory;Lcom/sun/webkit/BackForwardList$Entry;Ljavafx/scene/web/WebHistory$1;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 214
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/web/WebHistory$1;->this$0:Ljavafx/scene/web/WebHistory;

    invoke-static {v5}, Ljavafx/scene/web/WebHistory;->access$200(Ljavafx/scene/web/WebHistory;)Lcom/sun/webkit/BackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/webkit/BackForwardList;->getCurrentIndex()I

    move-result v5

    invoke-static {v4, v5}, Ljavafx/scene/web/WebHistory;->access$500(Ljavafx/scene/web/WebHistory;I)V

    .line 215
    goto/16 :goto_0
.end method
