.class public Ljavafx/fxml/FXMLLoader;
.super Ljava/lang/Object;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/fxml/FXMLLoader$ControllerAccessor;,
        Ljavafx/fxml/FXMLLoader$SupportedType;,
        Ljavafx/fxml/FXMLLoader$MethodHandler;,
        Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;,
        Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;,
        Ljavafx/fxml/FXMLLoader$ObservableMapChangeAdapter;,
        Ljavafx/fxml/FXMLLoader$ObservableListChangeAdapter;,
        Ljavafx/fxml/FXMLLoader$ScriptEventHandler;,
        Ljavafx/fxml/FXMLLoader$ControllerMethodEventHandler;,
        Ljavafx/fxml/FXMLLoader$Attribute;,
        Ljavafx/fxml/FXMLLoader$DefineElement;,
        Ljavafx/fxml/FXMLLoader$ScriptElement;,
        Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;,
        Ljavafx/fxml/FXMLLoader$PropertyElement;,
        Ljavafx/fxml/FXMLLoader$RootElement;,
        Ljavafx/fxml/FXMLLoader$CopyElement;,
        Ljavafx/fxml/FXMLLoader$ReferenceElement;,
        Ljavafx/fxml/FXMLLoader$IncludeElement;,
        Ljavafx/fxml/FXMLLoader$UnknownTypeElement;,
        Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;,
        Ljavafx/fxml/FXMLLoader$ValueElement;,
        Ljavafx/fxml/FXMLLoader$Element;
    }
.end annotation


# static fields
.field public static final ARRAY_COMPONENT_DELIMITER:Ljava/lang/String; = ","

.field public static final BINDING_EXPRESSION_PREFIX:Ljava/lang/String; = "${"

.field public static final BINDING_EXPRESSION_SUFFIX:Ljava/lang/String; = "}"

.field public static final BI_DIRECTIONAL_BINDING_PREFIX:Ljava/lang/String; = "#{"

.field public static final BI_DIRECTIONAL_BINDING_SUFFIX:Ljava/lang/String; = "}"

.field public static final CHANGE_EVENT_HANDLER_SUFFIX:Ljava/lang/String; = "Change"

.field private static final COLLECTION_HANDLER_NAME:Ljava/lang/String; = "onChange"

.field public static final CONTROLLER_KEYWORD:Ljava/lang/String; = "controller"

.field public static final CONTROLLER_METHOD_PREFIX:Ljava/lang/String; = "#"

.field public static final CONTROLLER_SUFFIX:Ljava/lang/String; = "Controller"

.field public static final COPY_SOURCE_ATTRIBUTE:Ljava/lang/String; = "source"

.field public static final COPY_TAG:Ljava/lang/String; = "copy"

.field private static DEFAULT_BUILDER_FACTORY:Ljavafx/util/BuilderFactory; = null

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field public static final DEFINE_TAG:Ljava/lang/String; = "define"

.field public static final ESCAPE_PREFIX:Ljava/lang/String; = "\\"

.field public static final EVENT_HANDLER_PREFIX:Ljava/lang/String; = "on"

.field public static final EVENT_KEY:Ljava/lang/String; = "event"

.field public static final EXPRESSION_PREFIX:Ljava/lang/String; = "$"

.field public static final FX_CONSTANT_ATTRIBUTE:Ljava/lang/String; = "constant"

.field public static final FX_CONTROLLER_ATTRIBUTE:Ljava/lang/String; = "controller"

.field public static final FX_FACTORY_ATTRIBUTE:Ljava/lang/String; = "factory"

.field public static final FX_ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field public static final FX_NAMESPACE_PREFIX:Ljava/lang/String; = "fx"

.field public static final FX_NAMESPACE_VERSION:Ljava/lang/String; = "1"

.field public static final FX_VALUE_ATTRIBUTE:Ljava/lang/String; = "value"

.field private static final GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final IMPORT_PROCESSING_INSTRUCTION:Ljava/lang/String; = "import"

.field public static final INCLUDE_CHARSET_ATTRIBUTE:Ljava/lang/String; = "charset"

.field public static final INCLUDE_RESOURCES_ATTRIBUTE:Ljava/lang/String; = "resources"

.field public static final INCLUDE_SOURCE_ATTRIBUTE:Ljava/lang/String; = "source"

.field public static final INCLUDE_TAG:Ljava/lang/String; = "include"

.field public static final INITIALIZE_METHOD_NAME:Ljava/lang/String; = "initialize"

.field public static final JAVAFX_VERSION:Ljava/lang/String;

.field public static final LANGUAGE_PROCESSING_INSTRUCTION:Ljava/lang/String; = "language"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"

.field public static final NULL_KEYWORD:Ljava/lang/String; = "null"

.field public static final REFERENCE_SOURCE_ATTRIBUTE:Ljava/lang/String; = "source"

.field public static final REFERENCE_TAG:Ljava/lang/String; = "reference"

.field public static final RELATIVE_PATH_PREFIX:Ljava/lang/String; = "@"

.field public static final RESOURCES_KEY:Ljava/lang/String; = "resources"

.field public static final RESOURCE_KEY_PREFIX:Ljava/lang/String; = "%"

.field public static final ROOT_TAG:Ljava/lang/String; = "root"

.field public static final ROOT_TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field public static final SCRIPT_CHARSET_ATTRIBUTE:Ljava/lang/String; = "charset"

.field public static final SCRIPT_SOURCE_ATTRIBUTE:Ljava/lang/String; = "source"

.field public static final SCRIPT_TAG:Ljava/lang/String; = "script"

.field private static defaultClassLoader:Ljava/lang/ClassLoader;

.field private static final extraneousWhitespacePattern:Ljava/util/regex/Pattern;


# instance fields
.field private builderFactory:Ljavafx/util/BuilderFactory;

.field private callerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private charset:Ljava/nio/charset/Charset;

.field private classLoader:Ljava/lang/ClassLoader;

.field private classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private controller:Ljava/lang/Object;

.field private final controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

.field private controllerFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private current:Ljavafx/fxml/FXMLLoader$Element;

.field private loadListener:Lcom/sun/javafx/fxml/LoadListener;

.field private final loaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/net/URL;

.field private namespace:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentLoader:Ljavafx/fxml/FXMLLoader;

.field private resources:Ljava/util/ResourceBundle;

.field private root:Ljava/lang/Object;

.field private scriptEngine:Ljavax/script/ScriptEngine;

.field private scriptEngineManager:Ljavax/script/ScriptEngineManager;

.field private staticLoad:Z

.field private xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/lang/RuntimePermission;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavafx/fxml/FXMLLoader;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    .line 1811
    const/4 v0, 0x0

    sput-object v0, Ljavafx/fxml/FXMLLoader;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 1813
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljavafx/fxml/FXMLLoader;->extraneousWhitespacePattern:Ljava/util/regex/Pattern;

    .line 1815
    new-instance v0, Ljavafx/fxml/JavaFXBuilderFactory;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljavafx/fxml/JavaFXBuilderFactory;-><init>()V

    sput-object v0, Ljavafx/fxml/FXMLLoader;->DEFAULT_BUILDER_FACTORY:Ljavafx/util/BuilderFactory;

    .line 2035
    new-instance v0, Ljavafx/fxml/FXMLLoader$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljavafx/fxml/FXMLLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljavafx/fxml/FXMLLoader;->JAVAFX_VERSION:Ljava/lang/String;

    .line 2041
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 2047
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;)V

    .line 2048
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 5

    .prologue
    .line 2057
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;)V

    .line 2058
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/ResourceBundle;)V
    .locals 7

    .prologue
    .line 2068
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, p2

    .local v2, "resources":Ljava/util/ResourceBundle;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;)V

    .line 2069
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;)V
    .locals 9

    .prologue
    .line 2080
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, p2

    .local v2, "resources":Ljava/util/ResourceBundle;
    move-object v3, p3

    .local v3, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;)V

    .line 2081
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2094
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, p2

    .local v2, "resources":Ljava/util/ResourceBundle;
    move-object v3, p3

    .local v3, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v4, p4

    .local v4, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;)V

    .line 2095
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2118
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object/from16 v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object/from16 v2, p2

    .local v2, "resources":Ljava/util/ResourceBundle;
    move-object/from16 v3, p3

    .local v3, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object/from16 v4, p4

    .local v4, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object/from16 v5, p5

    .local v5, "charset":Ljava/nio/charset/Charset;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    new-instance v12, Ljava/util/LinkedList;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    invoke-direct/range {v6 .. v12}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/util/LinkedList;)V

    .line 2120
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/util/LinkedList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2135
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, p2

    .local v2, "resources":Ljava/util/ResourceBundle;
    move-object v3, p3

    .local v3, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object/from16 v4, p4

    .local v4, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object/from16 v5, p5

    .local v5, "charset":Ljava/nio/charset/Charset;
    move-object/from16 v6, p6

    .local v6, "loaders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljavafx/fxml/FXMLLoader;>;"
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1784
    move-object v7, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableHashMap()Ljavafx/collections/ObservableMap;

    move-result-object v8

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    .line 1786
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    .line 1787
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    .line 1795
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 1796
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    .line 1797
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    .line 1801
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 1802
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    .line 1804
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->scriptEngine:Ljavax/script/ScriptEngine;

    .line 1806
    move-object v7, v0

    new-instance v8, Ljava/util/LinkedList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->packages:Ljava/util/List;

    .line 1807
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->classes:Ljava/util/Map;

    .line 1809
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->scriptEngineManager:Ljavax/script/ScriptEngineManager;

    .line 3302
    move-object v7, v0

    new-instance v8, Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;-><init>(Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    .line 2136
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setLocation(Ljava/net/URL;)V

    .line 2137
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setResources(Ljava/util/ResourceBundle;)V

    .line 2138
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setBuilderFactory(Ljavafx/util/BuilderFactory;)V

    .line 2139
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setControllerFactory(Ljavafx/util/Callback;)V

    .line 2140
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader;->setCharset(Ljava/nio/charset/Charset;)V

    .line 2142
    move-object v7, v0

    new-instance v8, Ljava/util/LinkedList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v6

    invoke-direct {v9, v10}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    .line 2143
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 8

    .prologue
    .line 2103
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "charset":Ljava/nio/charset/Charset;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;)V

    .line 2104
    return-void
.end method

.method static synthetic access$000(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$Element;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->scriptEngine:Ljavax/script/ScriptEngine;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1502(Ljavafx/fxml/FXMLLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader;->injectFields(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Ljavafx/fxml/FXMLLoader;->extraneousWhitespacePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/Callback;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->controllerFactory:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->builderFactory:Ljavafx/util/BuilderFactory;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2100()Ljavafx/util/BuilderFactory;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Ljavafx/fxml/FXMLLoader;->DEFAULT_BUILDER_FACTORY:Ljavafx/util/BuilderFactory;

    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/fxml/FXMLLoader;)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->charset:Ljava/nio/charset/Charset;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2300(Ljavafx/fxml/FXMLLoader;)Ljava/util/LinkedList;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2402(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader;
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljavafx/fxml/FXMLLoader;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader;->parentLoader:Ljavafx/fxml/FXMLLoader;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2500(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Z
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "x2":Ljavafx/fxml/FXMLLoader;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader;->isCyclic(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Z

    move-result v3

    move v0, v3

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return v0
.end method

.method static synthetic access$2600(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->callerClass:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Class;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$2800(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngineManager;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/fxml/FXMLLoader;->getScriptEngineManager()Ljavax/script/ScriptEngineManager;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$3800()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->checkAllPermissions()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$4100(Ljava/lang/reflect/Method;)Ljavafx/fxml/FXMLLoader$SupportedType;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljava/lang/reflect/Method;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/fxml/FXMLLoader;->toSupportedType(Ljava/lang/reflect/Method;)Ljavafx/fxml/FXMLLoader$SupportedType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/reflect/Method;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/fxml/FXMLLoader;)Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return v0
.end method

.method static synthetic access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private static checkAllPermissions()V
    .locals 5

    .prologue
    .line 3296
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 3297
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 3298
    move-object v1, v0

    new-instance v2, Ljava/security/AllPermission;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 3300
    :cond_0
    return-void
.end method

.method private clearImports()V
    .locals 2

    .prologue
    .line 2592
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->packages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2593
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->classes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2594
    return-void
.end method

.method static compareJFXVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    .prologue
    .line 3226
    move-object v0, p0

    .local v0, "rtVer":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "nsVer":Ljava/lang/String;
    const/4 v10, 0x0

    move v2, v10

    .line 3228
    .local v2, "retVal":I
    move-object v10, v0

    if-eqz v10, :cond_0

    const-string v10, ""

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v1

    if-eqz v10, :cond_0

    const-string v10, ""

    move-object v11, v1

    .line 3229
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3230
    :cond_0
    move v10, v2

    move v0, v10

    .line 3292
    .end local v0    # "rtVer":Ljava/lang/String;
    :goto_0
    return v0

    .line 3233
    .restart local v0    # "rtVer":Ljava/lang/String;
    :cond_1
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3234
    move v10, v2

    move v0, v10

    goto :goto_0

    .line 3238
    :cond_2
    move-object v10, v0

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move v3, v10

    .line 3239
    .local v3, "dashIndex":I
    move v10, v3

    if-lez v10, :cond_3

    .line 3240
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 3244
    :cond_3
    move-object v10, v0

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 3245
    .local v4, "underIndex":I
    move v10, v4

    if-lez v10, :cond_4

    .line 3246
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 3250
    :cond_4
    const-string v10, "^(\\d+)(\\.\\d+)*$"

    move-object v11, v0

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "^(\\d+)(\\.\\d+)*$"

    move-object v11, v1

    .line 3251
    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3252
    :cond_5
    move v10, v2

    move v0, v10

    goto :goto_0

    .line 3255
    :cond_6
    new-instance v10, Ljava/util/StringTokenizer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    const-string v13, "."

    invoke-direct {v11, v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    .line 3256
    .local v5, "nsVerTokenizer":Ljava/util/StringTokenizer;
    new-instance v10, Ljava/util/StringTokenizer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const-string v13, "."

    invoke-direct {v11, v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    .line 3257
    .local v6, "rtVerTokenizer":Ljava/util/StringTokenizer;
    const/4 v10, 0x0

    move v7, v10

    .local v7, "nsDigit":I
    const/4 v10, 0x0

    move v8, v10

    .line 3258
    .local v8, "rtDigit":I
    const/4 v10, 0x0

    move v9, v10

    .line 3260
    .local v9, "rtVerEnd":Z
    :goto_1
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v2

    if-nez v10, :cond_8

    .line 3261
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 3262
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3263
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 3264
    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    move v2, v10

    goto :goto_1

    .line 3266
    :cond_7
    const/4 v10, 0x1

    move v9, v10

    .line 3271
    :cond_8
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v2

    if-nez v10, :cond_9

    .line 3272
    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v8, v10

    .line 3273
    move v10, v8

    if-lez v10, :cond_9

    .line 3274
    const/4 v10, 0x1

    move v2, v10

    .line 3278
    :cond_9
    move v10, v9

    if-eqz v10, :cond_a

    .line 3279
    move v10, v7

    if-lez v10, :cond_b

    .line 3280
    const/4 v10, -0x1

    move v2, v10

    .line 3292
    :cond_a
    :goto_2
    move v10, v2

    move v0, v10

    goto/16 :goto_0

    .line 3282
    :cond_b
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3283
    move-object v10, v5

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 3284
    move v10, v7

    if-lez v10, :cond_b

    .line 3285
    const/4 v10, -0x1

    move v2, v10

    .line 3286
    goto :goto_2
.end method

.method private constructFXMLTrace()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2609
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 2611
    .local v1, "messageBuilder":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/fxml/FXMLLoader;

    move-object v3, v4

    .line 2612
    .local v3, "loader":Ljavafx/fxml/FXMLLoader;
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    if-eqz v5, :cond_1

    move-object v5, v3

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2614
    move-object v4, v3

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    if-eqz v4, :cond_0

    .line 2615
    move-object v4, v1

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2616
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/fxml/FXMLLoader;->impl_getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2619
    :cond_0
    move-object v4, v1

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2620
    goto :goto_0

    .line 2612
    :cond_1
    const-string v5, "unknown path"

    goto :goto_1

    .line 2621
    .end local v3    # "loader":Ljavafx/fxml/FXMLLoader;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;
    .locals 7

    .prologue
    .line 2597
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljavafx/fxml/LoadException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/fxml/FXMLLoader;->constructFXMLTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/fxml/LoadException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private constructLoadException(Ljava/lang/String;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;
    .locals 8

    .prologue
    .line 2605
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    new-instance v3, Ljavafx/fxml/LoadException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/fxml/FXMLLoader;->constructFXMLTrace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/fxml/LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;
    .locals 7

    .prologue
    .line 2601
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    new-instance v2, Ljavafx/fxml/LoadException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/fxml/FXMLLoader;->constructFXMLTrace()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private createElement()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2716
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 2717
    .local v1, "prefix":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2719
    .local v2, "localName":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_c

    .line 2720
    move-object v6, v2

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v3, v6

    .line 2722
    .local v3, "i":I
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2723
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2725
    .local v4, "name":Ljava/lang/String;
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 2727
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_0

    .line 2728
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/fxml/LoadListener;->beginPropertyElement(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2731
    :cond_0
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$PropertyElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Ljavafx/fxml/FXMLLoader$PropertyElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    .line 2753
    .line 2777
    .line 2820
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 2734
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 2736
    .local v5, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 2737
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_2

    .line 2738
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v7, v4

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/fxml/LoadListener;->beginPropertyElement(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2741
    :cond_2
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$PropertyElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v8, v9, v10, v11}, Ljavafx/fxml/FXMLLoader$PropertyElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto :goto_0

    .line 2742
    :cond_3
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    if-eqz v6, :cond_5

    .line 2744
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_4

    .line 2745
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/javafx/fxml/LoadListener;->beginUnknownStaticPropertyElement(Ljava/lang/String;)V

    .line 2748
    :cond_4
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/fxml/FXMLLoader$UnknownStaticPropertyElement;-><init>(Ljavafx/fxml/FXMLLoader;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto :goto_0

    .line 2750
    :cond_5
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid property."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 2754
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    if-nez v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 2755
    move-object v6, v0

    const-string v7, "Root value already specified."

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 2758
    :cond_7
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 2760
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v4

    if-eqz v6, :cond_9

    .line 2761
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_8

    .line 2762
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/javafx/fxml/LoadListener;->beginInstanceDeclarationElement(Ljava/lang/Class;)V

    .line 2765
    :cond_8
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljava/lang/Class;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2766
    :cond_9
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    if-eqz v6, :cond_b

    .line 2768
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_a

    .line 2769
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/javafx/fxml/LoadListener;->beginUnknownTypeElement(Ljava/lang/String;)V

    .line 2772
    :cond_a
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$UnknownTypeElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$UnknownTypeElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2774
    :cond_b
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid type."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 2777
    .end local v3    # "i":I
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move-object v6, v1

    const-string v7, "fx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2778
    move-object v6, v2

    const-string v7, "include"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2779
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_d

    .line 2780
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginIncludeElement()V

    .line 2783
    :cond_d
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$IncludeElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$IncludeElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2784
    :cond_e
    move-object v6, v2

    const-string v7, "reference"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2785
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_f

    .line 2786
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginReferenceElement()V

    .line 2789
    :cond_f
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$ReferenceElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$ReferenceElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2790
    :cond_10
    move-object v6, v2

    const-string v7, "copy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2791
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_11

    .line 2792
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginCopyElement()V

    .line 2795
    :cond_11
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$CopyElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$CopyElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2796
    :cond_12
    move-object v6, v2

    const-string v7, "root"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2797
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_13

    .line 2798
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginRootElement()V

    .line 2801
    :cond_13
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$RootElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$RootElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2802
    :cond_14
    move-object v6, v2

    const-string v7, "script"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2803
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_15

    .line 2804
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginScriptElement()V

    .line 2807
    :cond_15
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$ScriptElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$ScriptElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2808
    :cond_16
    move-object v6, v2

    const-string v7, "define"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2809
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v6, :cond_17

    .line 2810
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    invoke-interface {v6}, Lcom/sun/javafx/fxml/LoadListener;->beginDefineElement()V

    .line 2813
    :cond_17
    move-object v6, v0

    new-instance v7, Ljavafx/fxml/FXMLLoader$DefineElement;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$DefineElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    iput-object v7, v6, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    goto/16 :goto_0

    .line 2815
    :cond_18
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid element."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 2818
    :cond_19
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected namespace prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6
.end method

.method public static getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3064
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    move-object v0, v2

    .line 3065
    .local v0, "sm":Ljava/lang/SecurityManager;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 3066
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 3068
    .local v1, "caller":Ljava/lang/Class;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->getDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "sm":Ljava/lang/SecurityManager;
    return-object v0

    .line 3066
    .end local v1    # "caller":Ljava/lang/Class;
    .restart local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 5

    .prologue
    .line 3043
    move-object v0, p0

    .local v0, "caller":Ljava/lang/Class;
    sget-object v3, Ljavafx/fxml/FXMLLoader;->defaultClassLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_2

    .line 3044
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    move-object v1, v3

    .line 3045
    .local v1, "sm":Ljava/lang/SecurityManager;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 3046
    move-object v3, v0

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 3047
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 3049
    .local v2, "callerClassLoader":Ljava/lang/ClassLoader;
    move-object v3, v2

    const-class v4, Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->needsClassLoaderPermissionCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3050
    move-object v3, v1

    sget-object v4, Ljavafx/fxml/FXMLLoader;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 3053
    .end local v2    # "callerClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    .line 3055
    .end local v0    # "caller":Ljava/lang/Class;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :goto_1
    return-object v0

    .line 3047
    .restart local v0    # "caller":Ljava/lang/Class;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 3055
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    sget-object v3, Ljavafx/fxml/FXMLLoader;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object v0, v3

    goto :goto_1
.end method

.method private getScriptEngineManager()Ljavax/script/ScriptEngineManager;
    .locals 6

    .prologue
    .line 2988
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->scriptEngineManager:Ljavax/script/ScriptEngineManager;

    if-nez v1, :cond_0

    .line 2989
    move-object v1, v0

    new-instance v2, Ljavax/script/ScriptEngineManager;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljavax/script/ScriptEngineManager;-><init>()V

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader;->scriptEngineManager:Ljavax/script/ScriptEngineManager;

    .line 2990
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->scriptEngineManager:Ljavax/script/ScriptEngineManager;

    new-instance v2, Ljavax/script/SimpleBindings;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    invoke-direct {v3, v4}, Ljavax/script/SimpleBindings;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljavax/script/ScriptEngineManager;->setBindings(Ljavax/script/Bindings;)V

    .line 2993
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->scriptEngineManager:Ljavax/script/ScriptEngineManager;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2853
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v2, v6

    .line 2855
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2858
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {v6, v7, v8}, Ljavafx/fxml/FXMLLoader;->loadType(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 2861
    .line 2886
    :cond_0
    :goto_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0

    .line 2859
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 2861
    goto :goto_0

    .line 2864
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->classes:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v2, v6

    .line 2866
    move-object v6, v2

    if-nez v6, :cond_0

    .line 2868
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->packages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 2870
    .local v4, "packageName":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    :try_start_1
    invoke-direct {v6, v7, v8}, Ljavafx/fxml/FXMLLoader;->loadTypeForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v2, v6

    .line 2873
    .line 2875
    :goto_2
    move-object v6, v2

    if-eqz v6, :cond_3

    .line 2876
    .line 2880
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 2881
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->classes:Ljava/util/Map;

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2871
    .restart local v4    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_2

    .line 2878
    :cond_3
    goto :goto_1
.end method

.method private importClass(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2846
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader;->loadType(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2849
    .line 2850
    return-void

    .line 2847
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2848
    .local v2, "exception":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3
.end method

.method private importPackage(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2841
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->packages:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2842
    return-void
.end method

.method private injectFields(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "fieldName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    if-eqz v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_0

    .line 1159
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getControllerFields()Ljava/util/Map;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 1160
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 1162
    move-object v6, v3

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    move-object v5, v6

    .line 1163
    .local v5, "f":Ljava/lang/reflect/Field;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    goto :goto_0

    .line 1167
    .line 1170
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 1165
    .restart local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 1166
    .local v4, "exception":Ljava/lang/IllegalAccessException;
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6
.end method

.method private isCyclic(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Z
    .locals 6

    .prologue
    .line 2222
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "currentLoader":Ljavafx/fxml/FXMLLoader;
    move-object v2, p2

    .local v2, "node":Ljavafx/fxml/FXMLLoader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 2223
    const/4 v3, 0x0

    move v0, v3

    .line 2228
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :goto_0
    return v0

    .line 2225
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2226
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 2228
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->parentLoader:Ljavafx/fxml/FXMLLoader;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader;->isCyclic(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3097
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3098
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v2

    .line 3097
    :goto_0
    invoke-static {v1, v2}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "location":Ljava/net/URL;
    return-object v0

    .line 3098
    .restart local v0    # "location":Ljava/net/URL;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/net/URL;Ljava/util/ResourceBundle;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3116
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, v0

    move-object v3, v1

    .line 3117
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3118
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v4

    .line 3116
    :goto_0
    invoke-static {v2, v3, v4}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "location":Ljava/net/URL;
    return-object v0

    .line 3118
    .restart local v0    # "location":Ljava/net/URL;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3139
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    .line 3140
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3141
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v6

    .line 3139
    :goto_0
    invoke-static {v3, v4, v5, v6}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "location":Ljava/net/URL;
    return-object v0

    .line 3141
    .restart local v0    # "location":Ljava/net/URL;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3165
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v3, p3

    .local v3, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    .line 3166
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3167
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v8

    .line 3165
    :goto_0
    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "location":Ljava/net/URL;
    return-object v0

    .line 3167
    .restart local v0    # "location":Ljava/net/URL;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 3194
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v3, p3

    .local v3, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object v4, p4

    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 3196
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3197
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v10

    .line 3194
    :goto_0
    invoke-static/range {v5 .. v10}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "location":Ljava/net/URL;
    return-object v0

    .line 3197
    .restart local v0    # "location":Ljava/net/URL;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private loadImpl(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2454
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v1

    if-nez v7, :cond_0

    .line 2455
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "inputStream is null."

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2458
    :cond_0
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->callerClass:Ljava/lang/Class;

    .line 2459
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->setCallerClass(Ljava/lang/Class;)V

    .line 2461
    move-object v7, v0

    :try_start_0
    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->clearImports()V

    .line 2464
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    const-string v8, "location"

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2465
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    const-string v8, "resources"

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    invoke-interface {v7, v8, v9}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2468
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->scriptEngine:Ljavax/script/ScriptEngine;
    :try_end_0
    .catch Ljavafx/fxml/LoadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2472
    :try_start_1
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v7

    move-object v3, v7

    .line 2473
    .local v3, "xmlInputFactory":Ljavax/xml/stream/XMLInputFactory;
    move-object v7, v3

    const-string v8, "javax.xml.stream.isCoalescing"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2477
    new-instance v7, Ljava/io/InputStreamReader;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v7

    .line 2478
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v7, v0

    new-instance v8, Ljavafx/fxml/FXMLLoader$2;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljavafx/fxml/FXMLLoader$2;-><init>(Ljavafx/fxml/FXMLLoader;Ljavax/xml/stream/XMLStreamReader;)V

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavafx/fxml/LoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2505
    .line 2508
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavafx/fxml/LoadException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2512
    .end local v3    # "xmlInputFactory":Ljavax/xml/stream/XMLInputFactory;
    :goto_0
    move-object v7, v0

    :try_start_3
    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2513
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->next()I
    :try_end_3
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavafx/fxml/LoadException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    move v3, v7

    .line 2515
    .local v3, "event":I
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 2541
    :goto_1
    goto :goto_0

    .line 2503
    .end local v3    # "event":I
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 2504
    .local v3, "exception":Ljavax/xml/stream/XMLStreamException;
    move-object v7, v0

    move-object v8, v3

    :try_start_4
    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
    :try_end_4
    .catch Ljavafx/fxml/LoadException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2576
    .end local v3    # "exception":Ljavax/xml/stream/XMLStreamException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 2577
    .local v3, "exception":Ljavafx/fxml/LoadException;
    move-object v7, v3

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2581
    .end local v3    # "exception":Ljavafx/fxml/LoadException;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->setCallerClass(Ljava/lang/Class;)V

    .line 2583
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->reset()V

    .line 2585
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v7, v6

    throw v7

    .line 2517
    .local v3, "event":I
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :pswitch_0
    move-object v7, v0

    :try_start_6
    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->processProcessingInstruction()V

    .line 2518
    goto :goto_1

    .line 2522
    :pswitch_1
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->processComment()V

    .line 2523
    goto :goto_1

    .line 2527
    :pswitch_2
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->processStartElement()V

    .line 2528
    goto :goto_1

    .line 2532
    :pswitch_3
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->processEndElement()V

    .line 2533
    goto :goto_1

    .line 2537
    :pswitch_4
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/fxml/FXMLLoader;->processCharacters()V
    :try_end_6
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavafx/fxml/LoadException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2542
    .end local v3    # "event":I
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 2543
    .local v3, "exception":Ljavax/xml/stream/XMLStreamException;
    move-object v7, v0

    move-object v8, v3

    :try_start_7
    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
    :try_end_7
    .catch Ljavafx/fxml/LoadException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2578
    .end local v3    # "exception":Ljavax/xml/stream/XMLStreamException;
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 2579
    .local v3, "exception":Ljava/lang/Exception;
    move-object v7, v0

    move-object v8, v3

    :try_start_8
    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2544
    .line 2546
    .end local v3    # "exception":Ljava/lang/Exception;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_1
    move-object v7, v0

    :try_start_9
    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 2547
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    instance-of v7, v7, Ljavafx/fxml/Initializable;

    if-eqz v7, :cond_3

    .line 2548
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    check-cast v7, Ljavafx/fxml/Initializable;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    invoke-interface {v7, v8, v9}, Ljavafx/fxml/Initializable;->initialize(Ljava/net/URL;Ljava/util/ResourceBundle;)V
    :try_end_9
    .catch Ljavafx/fxml/LoadException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2581
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_2
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->setCallerClass(Ljava/lang/Class;)V

    .line 2583
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->reset()V

    .line 2585
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    .line 2586
    .line 2588
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    move-object v0, v7

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0

    .line 2551
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    move-object v7, v0

    :try_start_a
    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    .line 2552
    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getControllerFields()Ljava/util/Map;

    move-result-object v7

    move-object v3, v7

    .line 2554
    .local v3, "controllerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/reflect/Field;>;>;"
    move-object v7, v0

    const-string v8, "location"

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    invoke-direct {v7, v8, v9}, Ljavafx/fxml/FXMLLoader;->injectFields(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2556
    move-object v7, v0

    const-string v8, "resources"

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    invoke-direct {v7, v8, v9}, Ljavafx/fxml/FXMLLoader;->injectFields(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2559
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    .line 2560
    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getControllerMethods()Ljava/util/Map;

    move-result-object v7

    sget-object v8, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 2561
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "initialize"

    .line 2562
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljavafx/fxml/LoadException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v4, v7

    .line 2564
    .local v4, "initializeMethod":Ljava/lang/reflect/Method;
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 2566
    move-object v7, v4

    move-object v8, v0

    :try_start_b
    iget-object v8, v8, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljavafx/fxml/LoadException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v7

    .line 2572
    goto :goto_2

    .line 2567
    :catch_4
    move-exception v7

    move-object v5, v7

    .line 2572
    goto :goto_2

    .line 2570
    :catch_5
    move-exception v7

    move-object v5, v7

    .line 2571
    .local v5, "exception":Ljava/lang/reflect/InvocationTargetException;
    move-object v7, v0

    move-object v8, v5

    :try_start_c
    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
    :try_end_c
    .catch Ljavafx/fxml/LoadException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private loadImpl(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2433
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    if-nez v5, :cond_0

    .line 2434
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Location is not set."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2437
    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 2440
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 2441
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 2443
    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 2444
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 2448
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0

    .line 2443
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    if-eqz v5, :cond_2

    .line 2444
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_2
    move-object v5, v4

    throw v5
.end method

.method private static loadImpl(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3104
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "location":Ljava/net/URL;
    return-object v0
.end method

.method private static loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3124
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "location":Ljava/net/URL;
    return-object v0
.end method

.method private static loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3148
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v3, p3

    .local v3, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "location":Ljava/net/URL;
    return-object v0
.end method

.method private static loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3175
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v3, p3

    .local v3, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object v4, p4

    .local v4, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const-string v9, "UTF-8"

    .line 3176
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    move-object v10, v4

    .line 3175
    invoke-static/range {v5 .. v10}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "location":Ljava/net/URL;
    return-object v0
.end method

.method private static loadImpl(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/ResourceBundle;",
            "Ljavafx/util/BuilderFactory;",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3206
    move-object v0, p0

    .local v0, "location":Ljava/net/URL;
    move-object/from16 v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object/from16 v2, p2

    .local v2, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object/from16 v3, p3

    .local v3, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object/from16 v4, p4

    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object/from16 v5, p5

    .local v5, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    if-nez v7, :cond_0

    .line 3207
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "Location is required."

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3210
    :cond_0
    new-instance v7, Ljavafx/fxml/FXMLLoader;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;Ljava/util/ResourceBundle;Ljavafx/util/BuilderFactory;Ljavafx/util/Callback;Ljava/nio/charset/Charset;)V

    move-object v6, v7

    .line 3214
    .local v6, "fxmlLoader":Ljavafx/fxml/FXMLLoader;
    move-object v7, v6

    move-object v8, v5

    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "location":Ljava/net/URL;
    return-object v0
.end method

.method public static loadType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3018
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 3019
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {}, Ljavafx/fxml/FXMLLoader;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "className":Ljava/lang/String;
    return-object v0
.end method

.method public static loadType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3006
    move-object v0, p0

    .local v0, "packageName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    const/16 v4, 0x2e

    const/16 v5, 0x24

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavafx/fxml/FXMLLoader;->loadType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "packageName":Ljava/lang/String;
    return-object v0
.end method

.method private loadType(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2890
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "cache":Z
    move-object v8, v1

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v3, v8

    .line 2891
    .local v3, "i":I
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    .line 2892
    .local v4, "n":I
    :goto_0
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 2894
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2895
    move-object v8, v1

    const/16 v9, 0x2e

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    move v3, v8

    goto :goto_0

    .line 2898
    :cond_0
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move v8, v3

    move v9, v4

    if-ne v8, v9, :cond_2

    .line 2899
    :cond_1
    new-instance v8, Ljava/lang/ClassNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v8

    .line 2902
    :cond_2
    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 2903
    .local v5, "packageName":Ljava/lang/String;
    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 2905
    .local v6, "className":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader;->loadTypeForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v7, v8

    .line 2907
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v8, v2

    if-eqz v8, :cond_3

    .line 2908
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader;->classes:Ljava/util/Map;

    move-object v9, v6

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2911
    :cond_3
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private loadTypeForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2916
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    const/16 v6, 0x2e

    const/16 v7, 0x24

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method private static needsClassLoaderPermissionCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 5

    .prologue
    .line 3023
    move-object v0, p0

    .local v0, "from":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "to":Ljava/lang/ClassLoader;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 3024
    const/4 v3, 0x0

    move v0, v3

    .line 3039
    .end local v0    # "from":Ljava/lang/ClassLoader;
    :goto_0
    return v0

    .line 3026
    .restart local v0    # "from":Ljava/lang/ClassLoader;
    :cond_0
    move-object v3, v0

    if-nez v3, :cond_1

    .line 3027
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3029
    :cond_1
    move-object v3, v1

    if-nez v3, :cond_2

    .line 3030
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 3032
    :cond_2
    move-object v3, v1

    move-object v2, v3

    .line 3034
    .local v2, "acl":Ljava/lang/ClassLoader;
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 3035
    move-object v3, v0

    move-object v4, v2

    if-ne v3, v4, :cond_4

    .line 3036
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 3038
    :cond_4
    move-object v3, v2

    if-nez v3, :cond_3

    .line 3039
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private processCharacters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2835
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2836
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$Element;->processCharacters()V

    .line 2838
    :cond_0
    return-void
.end method

.method private processComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2697
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v1, :cond_0

    .line 2698
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/javafx/fxml/LoadListener;->readComment(Ljava/lang/String;)V

    .line 2700
    :cond_0
    return-void
.end method

.method private processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2823
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$Element;->processEndElement()V

    .line 2825
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v1, :cond_0

    .line 2826
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/sun/javafx/fxml/LoadListener;->endElement(Ljava/lang/Object;)V

    .line 2830
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->parent:Ljavafx/fxml/FXMLLoader$Element;

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    .line 2831
    return-void
.end method

.method private processImport()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2683
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2685
    .local v1, "target":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v2, :cond_0

    .line 2686
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/fxml/LoadListener;->readImportProcessingInstruction(Ljava/lang/String;)V

    .line 2689
    :cond_0
    move-object v2, v1

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2690
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->importPackage(Ljava/lang/String;)V

    .line 2694
    :goto_0
    return-void

    .line 2692
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/FXMLLoader;->importClass(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processLanguage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2666
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->scriptEngine:Ljavax/script/ScriptEngine;

    if-eqz v3, :cond_0

    .line 2667
    move-object v3, v0

    const-string v4, "Page language already set."

    invoke-direct {v3, v4}, Ljavafx/fxml/FXMLLoader;->constructLoadException(Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 2670
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2672
    .local v1, "language":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    if-eqz v3, :cond_1

    .line 2673
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/fxml/LoadListener;->readLanguageProcessingInstruction(Ljava/lang/String;)V

    .line 2676
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    if-nez v3, :cond_2

    .line 2677
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/fxml/FXMLLoader;->getScriptEngineManager()Ljavax/script/ScriptEngineManager;

    move-result-object v3

    move-object v2, v3

    .line 2678
    .local v2, "scriptEngineManager":Ljavax/script/ScriptEngineManager;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v4

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader;->scriptEngine:Ljavax/script/ScriptEngine;

    .line 2680
    .end local v2    # "scriptEngineManager":Ljavax/script/ScriptEngineManager;
    :cond_2
    return-void
.end method

.method private processProcessingInstruction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 2656
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2658
    .local v1, "piTarget":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "language"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2659
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/fxml/FXMLLoader;->processLanguage()V

    .line 2663
    :cond_0
    :goto_0
    return-void

    .line 2660
    :cond_1
    move-object v2, v1

    const-string v3, "import"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2661
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/fxml/FXMLLoader;->processImport()V

    goto :goto_0
.end method

.method private processStartElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2704
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/fxml/FXMLLoader;->createElement()V

    .line 2707
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$Element;->processStartElement()V

    .line 2710
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2711
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    .line 2713
    :cond_0
    return-void
.end method

.method public static setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    .line 3079
    move-object v0, p0

    .local v0, "defaultClassLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 3080
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 3082
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    move-object v1, v2

    .line 3083
    .local v1, "sm":Ljava/lang/SecurityManager;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 3084
    move-object v2, v1

    new-instance v3, Ljava/security/AllPermission;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 3087
    :cond_1
    move-object v2, v0

    sput-object v2, Ljavafx/fxml/FXMLLoader;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 3088
    return-void
.end method

.method private static toSupportedType(Ljava/lang/reflect/Method;)Ljavafx/fxml/FXMLLoader$SupportedType;
    .locals 7

    .prologue
    .line 2979
    move-object v0, p0

    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-static {}, Ljavafx/fxml/FXMLLoader$SupportedType;->values()[Ljavafx/fxml/FXMLLoader$SupportedType;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 2980
    .local v4, "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljavafx/fxml/FXMLLoader$SupportedType;->methodIsOfType(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2981
    move-object v5, v4

    move-object v0, v5

    .line 2984
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 2979
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2984
    .end local v4    # "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 2208
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/fxml/FXMLLoader;

    if-eqz v3, :cond_3

    .line 2209
    move-object v3, v1

    check-cast v3, Ljavafx/fxml/FXMLLoader;

    move-object v2, v3

    .line 2210
    .local v2, "loader":Ljavafx/fxml/FXMLLoader;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    if-nez v3, :cond_2

    .line 2211
    :cond_0
    move-object v3, v2

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 2216
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    .end local v2    # "loader":Ljavafx/fxml/FXMLLoader;
    :goto_1
    return v0

    .line 2211
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    .restart local v2    # "loader":Ljavafx/fxml/FXMLLoader;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2213
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    .line 2214
    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    .line 2213
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_1

    .line 2216
    .end local v2    # "loader":Ljavafx/fxml/FXMLLoader;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public getBuilderFactory()Ljavafx/util/BuilderFactory;
    .locals 2

    .prologue
    .line 2266
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->builderFactory:Ljavafx/util/BuilderFactory;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 2300
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->charset:Ljava/nio/charset/Charset;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 4
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->classLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_1

    .line 2324
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    move-object v1, v3

    .line 2325
    .local v1, "sm":Ljava/lang/SecurityManager;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2326
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 2328
    .local v2, "caller":Ljava/lang/Class;
    move-object v3, v2

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->getDefaultClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    .line 2330
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .end local v2    # "caller":Ljava/lang/Class;
    :goto_1
    return-object v0

    .line 2326
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2330
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader;->classLoader:Ljava/lang/ClassLoader;

    move-object v0, v3

    goto :goto_1
.end method

.method public getController()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 2236
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getControllerFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2283
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->controllerFactory:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getLocation()Ljava/net/URL;
    .locals 2

    .prologue
    .line 2149
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getNamespace()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2181
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getResources()Ljava/util/ResourceBundle;
    .locals 2

    .prologue
    .line 2165
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 2189
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public impl_getLineNumber()I
    .locals 2

    .prologue
    .line 2632
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->xmlStreamReader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return v0
.end method

.method public impl_getLoadListener()Lcom/sun/javafx/fxml/LoadListener;
    .locals 2

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public impl_getParseTrace()[Lcom/sun/javafx/fxml/ParseTraceElement;
    .locals 12

    .prologue
    .line 2644
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/javafx/fxml/ParseTraceElement;

    move-object v1, v5

    .line 2646
    .local v1, "parseTrace":[Lcom/sun/javafx/fxml/ParseTraceElement;
    const/4 v5, 0x0

    move v2, v5

    .line 2647
    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader;->loaders:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/fxml/FXMLLoader;

    move-object v4, v5

    .line 2648
    .local v4, "loader":Ljavafx/fxml/FXMLLoader;
    move-object v5, v1

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v7, Lcom/sun/javafx/fxml/ParseTraceElement;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    move-object v10, v4

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader;->current:Ljavafx/fxml/FXMLLoader$Element;

    if-eqz v10, :cond_0

    move-object v10, v4

    .line 2649
    invoke-virtual {v10}, Ljavafx/fxml/FXMLLoader;->impl_getLineNumber()I

    move-result v10

    :goto_1
    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/fxml/ParseTraceElement;-><init>(Ljava/net/URL;I)V

    aput-object v7, v5, v6

    .line 2650
    goto :goto_0

    .line 2649
    :cond_0
    const/4 v10, -0x1

    goto :goto_1

    .line 2652
    .end local v4    # "loader":Ljavafx/fxml/FXMLLoader;
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0
.end method

.method public impl_isStaticLoad()Z
    .locals 2

    .prologue
    .line 2358
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return v0
.end method

.method public impl_setLoadListener(Lcom/sun/javafx/fxml/LoadListener;)V
    .locals 4

    .prologue
    .line 2395
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "loadListener":Lcom/sun/javafx/fxml/LoadListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->loadListener:Lcom/sun/javafx/fxml/LoadListener;

    .line 2396
    return-void
.end method

.method public impl_setStaticLoad(Z)V
    .locals 4

    .prologue
    .line 2371
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move v1, p1

    .local v1, "staticLoad":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/fxml/FXMLLoader;->staticLoad:Z

    .line 2372
    return-void
.end method

.method public load()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 2409
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2410
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v2

    .line 2409
    :goto_0
    invoke-direct {v1, v2}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0

    .line 2410
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 2425
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2426
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v4

    .line 2425
    :goto_0
    invoke-direct {v2, v3, v4}, Ljavafx/fxml/FXMLLoader;->loadImpl(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader;
    return-object v0

    .line 2426
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setBuilderFactory(Ljavafx/util/BuilderFactory;)V
    .locals 4

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "builderFactory":Ljavafx/util/BuilderFactory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->builderFactory:Ljavafx/util/BuilderFactory;

    .line 2276
    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 6

    .prologue
    .line 2310
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "charset":Ljava/nio/charset/Charset;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2311
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "charset is null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2314
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->charset:Ljava/nio/charset/Charset;

    .line 2315
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 2341
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2342
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 2345
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 2347
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/fxml/FXMLLoader;->clearImports()V

    .line 2348
    return-void
.end method

.method public setController(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 2251
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "controller":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->controller:Ljava/lang/Object;

    .line 2253
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2254
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    const-string v3, "controller"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2259
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->controllerAccessor:Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->setController(Ljava/lang/Object;)V

    .line 2260
    return-void

    .line 2256
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader;->namespace:Ljavafx/collections/ObservableMap;

    const-string v3, "controller"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public setControllerFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2293
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "controllerFactory":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->controllerFactory:Ljavafx/util/Callback;

    .line 2294
    return-void
.end method

.method public setLocation(Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 2158
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->location:Ljava/net/URL;

    .line 2159
    return-void
.end method

.method public setResources(Ljava/util/ResourceBundle;)V
    .locals 4

    .prologue
    .line 2174
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "resources":Ljava/util/ResourceBundle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->resources:Ljava/util/ResourceBundle;

    .line 2175
    return-void
.end method

.method public setRoot(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2203
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader;->root:Ljava/lang/Object;

    .line 2204
    return-void
.end method
