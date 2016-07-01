.class Ljavafx/fxml/FXMLLoader$ScriptElement;
.super Ljavafx/fxml/FXMLLoader$Element;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriptElement"
.end annotation


# instance fields
.field public charset:Ljava/nio/charset/Charset;

.field public source:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 4

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader$Element;-><init>(Ljavafx/fxml/FXMLLoader;)V

    .line 1495
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    .line 1496
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$2200(Ljavafx/fxml/FXMLLoader;)Ljava/nio/charset/Charset;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1494
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$ScriptElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public isCollection()Z
    .locals 2

    .prologue
    .line 1500
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    return v0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, "source"

    .line 1596
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1597
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1598
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    .line 1612
    :goto_0
    return-void

    .line 1602
    :cond_1
    move-object v4, v2

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1603
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1604
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_2
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 1609
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v1

    if-nez v5, :cond_4

    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid attribute."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public processCharacters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1581
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1582
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v2, "Script source already specified."

    invoke-static {v1, v2}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v1

    throw v1

    .line 1585
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v1}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v1}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1586
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v2, "Page language not specified."

    invoke-static {v1, v2}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v1

    throw v1

    .line 1589
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/fxml/FXMLLoader$ScriptElement;->updateValue(Ljava/lang/Object;)V

    .line 1590
    return-void
.end method

.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/fxml/FXMLLoader$Element;->processEndElement()V

    .line 1569
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ScriptElement;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1575
    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1574
    .local v1, "exception":Ljavax/script/ScriptException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/script/ScriptException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processStartElement()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ScriptElement;
    move-object v9, v0

    invoke-super {v9}, Ljavafx/fxml/FXMLLoader$Element;->processStartElement()V

    .line 1507
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1508
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    .line 1509
    .local v1, "i":I
    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 1510
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot determine type of script \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v9

    throw v9

    .line 1514
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 1516
    .local v2, "extension":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v9}, Ljavafx/fxml/FXMLLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v4, v9

    .line 1517
    .local v4, "cl":Ljava/lang/ClassLoader;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v9

    invoke-interface {v9}, Ljavax/script/ScriptEngine;->getFactory()Ljavax/script/ScriptEngineFactory;

    move-result-object v9

    invoke-interface {v9}, Ljavax/script/ScriptEngineFactory;->getExtensions()Ljava/util/List;

    move-result-object v9

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1519
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v9

    move-object v3, v9

    .line 1531
    .local v3, "engine":Ljavax/script/ScriptEngine;
    :goto_0
    move-object v9, v3

    if-nez v9, :cond_2

    .line 1532
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate scripting engine for extension "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v9

    throw v9

    .line 1521
    .end local v3    # "engine":Ljavax/script/ScriptEngine;
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v5, v9

    .line 1523
    .local v5, "oldLoader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1524
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$2800(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngineManager;

    move-result-object v9

    move-object v6, v9

    .line 1525
    .local v6, "scriptEngineManager":Ljavax/script/ScriptEngineManager;
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljavax/script/ScriptEngineManager;->getEngineByExtension(Ljava/lang/String;)Ljavax/script/ScriptEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move-object v3, v9

    .line 1527
    .restart local v3    # "engine":Ljavax/script/ScriptEngine;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1528
    goto :goto_0

    .line 1527
    .end local v3    # "engine":Ljavax/script/ScriptEngine;
    .end local v6    # "scriptEngineManager":Ljavax/script/ScriptEngineManager;
    :catchall_0
    move-exception v9

    move-object v7, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    move-object v9, v7

    throw v9

    .line 1538
    .end local v5    # "oldLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "engine":Ljavax/script/ScriptEngine;
    :cond_2
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_4

    .line 1539
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v5, v9

    .line 1548
    .local v5, "location":Ljava/net/URL;
    :goto_1
    const/4 v9, 0x0

    move-object v6, v9

    .line 1550
    .local v6, "scriptReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Ljavafx/fxml/FXMLLoader$ScriptElement;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v6, v9

    .line 1551
    move-object v9, v3

    move-object v10, v6

    invoke-interface {v9, v10}, Ljavax/script/ScriptEngine;->eval(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/script/ScriptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 1555
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 1556
    move-object v9, v6

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 1561
    .line 1563
    .end local v1    # "i":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "engine":Ljavax/script/ScriptEngine;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "location":Ljava/net/URL;
    .end local v6    # "scriptReader":Ljava/io/InputStreamReader;
    :cond_3
    :goto_2
    return-void

    .line 1541
    .restart local v1    # "i":I
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v3    # "engine":Ljavax/script/ScriptEngine;
    .restart local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v9

    if-nez v9, :cond_5

    .line 1542
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v10, "Base location is undefined."

    invoke-static {v9, v10}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v9

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1559
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 1560
    .local v5, "exception":Ljava/io/IOException;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v10, v5

    invoke-static {v9, v10}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v9

    throw v9

    .line 1545
    .end local v5    # "exception":Ljava/io/IOException;
    :cond_5
    :try_start_4
    new-instance v9, Ljava/net/URL;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    iget-object v11, v11, Ljavafx/fxml/FXMLLoader$ScriptElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v11}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Ljavafx/fxml/FXMLLoader$ScriptElement;->source:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v9

    .local v5, "location":Ljava/net/URL;
    goto :goto_1

    .line 1552
    .restart local v6    # "scriptReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 1553
    .local v7, "exception":Ljavax/script/ScriptException;
    move-object v9, v7

    :try_start_5
    invoke-virtual {v9}, Ljavax/script/ScriptException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1555
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 1556
    move-object v9, v6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    .line 1555
    .end local v7    # "exception":Ljavax/script/ScriptException;
    :catchall_1
    move-exception v9

    move-object v8, v9

    move-object v9, v6

    if-eqz v9, :cond_6

    .line 1556
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    move-object v9, v8

    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
.end method
