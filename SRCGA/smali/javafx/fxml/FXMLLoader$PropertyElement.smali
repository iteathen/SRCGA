.class Ljavafx/fxml/FXMLLoader$PropertyElement;
.super Ljavafx/fxml/FXMLLoader$Element;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyElement"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final readOnly:Z

.field public final sourceType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$Element;-><init>(Ljavafx/fxml/FXMLLoader;)V

    .line 1348
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    if-nez v6, :cond_0

    .line 1349
    move-object v6, v1

    const-string v7, "Invalid root element."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 1352
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 1353
    move-object v6, v1

    const-string v7, "Parent element does not support property elements."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 1356
    :cond_1
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->name:Ljava/lang/String;

    .line 1357
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->sourceType:Ljava/lang/Class;

    .line 1359
    move-object v6, v3

    if-nez v6, :cond_6

    .line 1361
    move-object v6, v2

    const-string v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1362
    move-object v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" is not a valid element name."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 1365
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v6

    move-object v4, v6

    .line 1367
    .local v4, "parentProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1368
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->isReadOnly(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    .line 1375
    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    if-eqz v6, :cond_5

    .line 1376
    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1377
    .local v5, "value":Ljava/lang/Object;
    move-object v6, v5

    if-nez v6, :cond_4

    .line 1378
    move-object v6, v1

    const-string v7, "Invalid property."

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 1372
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    goto :goto_0

    .line 1381
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/fxml/FXMLLoader$PropertyElement;->updateValue(Ljava/lang/Object;)V

    .line 1383
    .line 1387
    .end local v4    # "parentProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5
    :goto_1
    return-void

    .line 1385
    :cond_6
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1397
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$PropertyElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v2, v3

    .line 1399
    .local v2, "listType":Ljava/lang/reflect/Type;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getListItemType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 1403
    .end local v2    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->add(Ljava/lang/Object;)V

    .line 1404
    return-void
.end method

.method public isCollection()Z
    .locals 2

    .prologue
    .line 1391
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Ljavafx/fxml/FXMLLoader$Element;->isCollection()Z

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    return v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1428
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    if-nez v4, :cond_0

    .line 1429
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$PropertyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "Attributes are not supported for writable property elements."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1432
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$Element;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method public processCharacters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1448
    .local v1, "text":Ljava/lang/String;
    # getter for: Ljavafx/fxml/FXMLLoader;->extraneousWhitespacePattern:Ljava/util/regex/Pattern;
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$1700()Ljava/util/regex/Pattern;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1450
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    if-eqz v2, :cond_1

    .line 1451
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/fxml/FXMLLoader$PropertyElement;->isCollection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$PropertyElement;->add(Ljava/lang/Object;)V

    .line 1459
    :goto_0
    return-void

    .line 1454
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljavafx/fxml/FXMLLoader$Element;->processCharacters()V

    goto :goto_0

    .line 1457
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$PropertyElement;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/fxml/FXMLLoader$Element;->processEndElement()V

    .line 1439
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/fxml/FXMLLoader$PropertyElement;->readOnly:Z

    if-eqz v1, :cond_0

    .line 1440
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$PropertyElement;->processInstancePropertyAttributes()V

    .line 1441
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$PropertyElement;->processEventHandlerAttributes()V

    .line 1443
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyElement;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$PropertyElement;->updateValue(Ljava/lang/Object;)V

    .line 1411
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->sourceType:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1413
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v2}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$PropertyElement;->name:Ljava/lang/String;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1423
    :goto_0
    return-void

    .line 1415
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljavafx/util/Builder;

    if-eqz v2, :cond_1

    .line 1417
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->staticPropertyElements:Ljava/util/LinkedList;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1420
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$PropertyElement;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$PropertyElement;->sourceType:Ljava/lang/Class;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$PropertyElement;->name:Ljava/lang/String;

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
