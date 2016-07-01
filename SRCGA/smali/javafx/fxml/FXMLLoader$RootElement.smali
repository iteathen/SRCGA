.class Ljavafx/fxml/FXMLLoader$RootElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootElement"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 5

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$RootElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    .line 1274
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$RootElement;->type:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$RootElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$RootElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1296
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$RootElement;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->type:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1297
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "type is required."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1300
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$RootElement;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$400(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 1302
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v1

    if-nez v4, :cond_1

    .line 1303
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$RootElement;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid type."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1307
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$1500(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1308
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1309
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 1311
    .local v2, "value":Ljavafx/util/Builder;
    move-object v4, v2

    if-nez v4, :cond_2

    .line 1312
    # getter for: Ljavafx/fxml/FXMLLoader;->DEFAULT_BUILDER_FACTORY:Ljavafx/util/BuilderFactory;
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$2100()Ljavafx/util/BuilderFactory;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/util/BuilderFactory;->getBuilder(Ljava/lang/Class;)Ljavafx/util/Builder;

    move-result-object v4

    move-object v2, v4

    .line 1315
    :cond_2
    move-object v4, v2

    if-nez v4, :cond_3

    .line 1317
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lsun/reflect/misc/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 1322
    .line 1324
    .end local v2    # "value":Ljavafx/util/Builder;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$1502(Ljavafx/fxml/FXMLLoader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1337
    :goto_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$RootElement;
    return-object v0

    .line 1309
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$RootElement;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/util/BuilderFactory;->getBuilder(Ljava/lang/Class;)Ljavafx/util/Builder;

    move-result-object v4

    goto :goto_0

    .line 1318
    .restart local v2    # "value":Ljavafx/util/Builder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1319
    .local v3, "exception":Ljava/lang/InstantiationException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1320
    .end local v3    # "exception":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 1321
    .local v3, "exception":Ljava/lang/IllegalAccessException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1326
    .end local v2    # "value":Ljavafx/util/Builder;
    .end local v3    # "exception":Ljava/lang/IllegalAccessException;
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "Root hasn\'t been set. Use method setRoot() before load."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1329
    :cond_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v5}, Ljavafx/fxml/FXMLLoader;->access$1500(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1330
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root is not an instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 1331
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1330
    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1334
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$1500(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .local v2, "value":Ljava/lang/Object;
    goto :goto_1
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$RootElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_2

    .line 1280
    move-object v4, v2

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1282
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$RootElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$RootElement;->type:Ljava/lang/String;

    .line 1292
    :goto_0
    return-void

    .line 1287
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
