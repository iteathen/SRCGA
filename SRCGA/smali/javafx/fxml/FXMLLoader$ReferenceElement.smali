.class Ljavafx/fxml/FXMLLoader$ReferenceElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceElement"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 5

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ReferenceElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    .line 1174
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ReferenceElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$ReferenceElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ReferenceElement;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->source:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1197
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v3, "source is required."

    invoke-static {v2, v3}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v2

    throw v2

    .line 1200
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->source:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v2

    move-object v1, v2

    .line 1201
    .local v1, "path":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1202
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ReferenceElement;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v2

    throw v2

    .line 1205
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ReferenceElement;
    return-object v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ReferenceElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_2

    .line 1180
    move-object v4, v2

    const-string v5, "source"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1181
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1182
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ReferenceElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$ReferenceElement;->source:Ljava/lang/String;

    .line 1192
    :goto_0
    return-void

    .line 1187
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
