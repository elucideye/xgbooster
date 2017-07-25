set(XGBOOST_CMAKE_ARGS
  XGBOOST_USE_HALF=ON
  XGBOOST_DO_LEAN=${XGBOOSTER_DO_LEAN}
  XGBOOST_USE_CEREAL=${XGBOOSTER_SERIALIZE_WITH_CEREAL}
  )

if(ANDROID)
  list(APPEND XGBOOST_CMAKE_ARGS XGBOOST_ADD_TO_STRING=ON)
endif()

hunter_config(xgboost GIT_SUBMODULE "src/3rdparty/xgboost" CMAKE_ARGS ${XGBOOST_CMAKE_ARGS})
