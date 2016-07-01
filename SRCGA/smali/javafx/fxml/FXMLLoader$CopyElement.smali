.class Ljavafx/fxml/FXMLLoader$CopyElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyElement"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;


# direct methods
.method private constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 5

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    .line 1211
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$CopyElement;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 5

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x1":Ljavafx/fxml/FXMLLoader$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader$CopyElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->source:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1234
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "source is required."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1237
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->source:Ljava/lang/String;

    invoke-static {v7}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v7

    move-object v1, v7

    .line 1238
    .local v1, "path":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1239
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$CopyElement;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1242
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 1243
    .local v2, "sourceValue":Ljava/lang/Object;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 1245
    .local v3, "sourceValueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    move-object v4, v7

    .line 1247
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v7, v3

    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Lsun/reflect/misc/ConstructorUtil;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    .line 1250
    .line 1253
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 1255
    move-object v7, v3

    :try_start_1
    invoke-static {v7}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1256
    move-object v7, v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    move-object v5, v7

    .line 1263
    .line 1268
    .local v5, "value":Ljava/lang/Object;
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    return-object v0

    .line 1248
    .end local v5    # "value":Ljava/lang/Object;
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    :catch_0
    move-exception v7

    move-object v5, v7

    goto :goto_0

    .line 1257
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 1258
    .local v6, "exception":Ljava/lang/InstantiationException;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v6

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1259
    .end local v6    # "exception":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 1260
    .local v6, "exception":Ljava/lang/IllegalAccessException;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v6

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1261
    .end local v6    # "exception":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 1262
    .local v6, "exception":Ljava/lang/reflect/InvocationTargetException;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v6

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 1265
    .end local v6    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t copy value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$CopyElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_2

    .line 1217
    move-object v4, v2

    const-string v5, "source"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1218
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1219
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$CopyElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v4

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$CopyElement;->source:Ljava/lang/String;

    .line 1229
    :goto_0
    return-void

    .line 1224
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
